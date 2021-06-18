package com.ivan.blog.controller;

import com.ivan.blog.annotation.MyLog;
import com.ivan.blog.model.SysUser;
import com.ivan.blog.mq.mail.MailProduce;
import com.ivan.blog.service.StatisticsService;
import com.ivan.blog.service.SysUserService;
import com.ivan.blog.service.VisitService;
import com.ivan.blog.utils.CurrentUserUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

@Controller
@Slf4j
public class LoginController {

    @Resource
    private StringRedisTemplate stringRedisTemplate;
    @Resource
    private SysUserService sysUserService;
    @Resource
    private StatisticsService statisticsService;
    @Resource
    private VisitService visitService;

    @Resource
    private MailProduce mailProduce;

    //用户登录次数计数  redisKey 前缀
    private String SHIRO_LOGIN_COUNT = "shiro-login-count";
    //用户登录是否被锁定    一小时 redisKey 前缀
    private String SHIRO_IS_LOCK = "shiro-is-lock";
    //用户登录剩余次数
    private String SHIRO_LOGIN_LEFTCOUNT="shiro-login-left-count";

    @RequestMapping({"/","/index"})
    public String index(Model model){
        //获取当前登录用户信息
        SysUser user = CurrentUserUtil.getCurrentUserinfo();
        model.addAttribute("userinfo",user);

        return "index";
    }

    @RequestMapping(value = "/home",method = RequestMethod.GET)
    public String home(Model model){
        //博客数据统计(博客数,标签数,评论数)
        model.addAttribute("blogOv",statisticsService.blogOv());
        model.addAttribute("blogBackOv",statisticsService.blogBackOv());

        //博客访问量统计
        Map<String, Object> resultMap = visitService.getVisit();
        model.addAttribute("dateList",resultMap.get("dateList"));
        model.addAttribute("totalCount",resultMap.get("totalCount"));

        //消息队列测试
        //helloSender1.send();

        /*String userinfo = "{\"login\":\"15207126400\",\"id\":32918639,\"node_id\":\"MDQ6VXNlcjMyOTE4NjM5\",\"avatar_url\":\"https://avatars0.githubusercontent.com/u/32918639?v=4\",\"gravatar_id\":\"\",\"url\":\"https://api.github.com/users/15207126400\",\"html_url\":\"https://github.com/15207126400\",\"followers_url\":\"https://api.github.com/users/15207126400/followers\",\"following_url\":\"https://api.github.com/users/15207126400/following{/other_user}\",\"gists_url\":\"https://api.github.com/users/15207126400/gists{/gist_id}\",\"starred_url\":\"https://api.github.com/users/15207126400/starred{/owner}{/repo}\",\"subscriptions_url\":\"https://api.github.com/users/15207126400/subscriptions\",\"organizations_url\":\"https://api.github.com/users/15207126400/orgs\",\"repos_url\":\"https://api.github.com/users/15207126400/repos\",\"events_url\":\"https://api.github.com/users/15207126400/events{/privacy}\",\"received_events_url\":\"https://api.github.com/users/15207126400/received_events\",\"type\":\"User\",\"site_admin\":false,\"name\":\"Ivan\",\"company\":null,\"blog\":\"http://blog.ivan.group\",\"location\":\"HuBei, China\",\"email\":\"286835776@qq.com\",\"hireable\":null,\"bio\":\"m15207126400@163.com\",\"public_repos\":2,\"public_gists\":0,\"followers\":1,\"following\":1,\"created_at\":\"2017-10-19T02:28:30Z\",\"updated_at\":\"2020-01-29T07:57:09Z\"}";
        if(StringUtils.isNotBlank(userinfo)){
            JSONObject user = JSONObject.parseObject(userinfo);
            if(StringUtils.isNotBlank(user.getString("email"))){
                String email = user.getString("email");
                String toEmail = email.replace("\"", "");
                //消费消息 ---登录邮件提示
                mailProduce.send(toEmail);
            }
        }*/

        return "home";
    }

    @RequestMapping(value="/lock",method=RequestMethod.GET)
    public String lock(){
        return "lock";
    }

    @RequestMapping(value="/logout",method=RequestMethod.GET)
    public String logout(){
        Session session = SecurityUtils.getSubject().getSession();
        session.stop();
        return "login";
    }

    //每次登陆都对用户进行判断，如果被锁定了，直接跳转到lock
    @RequestMapping(value="/login",method=RequestMethod.GET)
    public String login(){
        Session session = SecurityUtils.getSubject().getSession();
        String islockString=(String) session.getAttribute("user");
        if(islockString==null){
            return "login";
        }else{
            return "lock";
        }
    }

    @MyLog(value = "后台登录")
    @RequestMapping(value="/ajaxLogin",method=RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> submitLogin(String username,String password,Boolean rememberMe) {
        Map<String, Object> resultMap = new LinkedHashMap<>();
        Map<String, String> map = new HashMap<>();

        Session session = SecurityUtils.getSubject().getSession();
        ValueOperations opsForValue = stringRedisTemplate.opsForValue();
        String key = SHIRO_LOGIN_COUNT + username;

        if(stringRedisTemplate.hasKey(key)){
            //计数大于5时，设置用户被锁定一小时
            if(Integer.parseInt(opsForValue.get(key).toString()) >= 5){
                opsForValue.set(SHIRO_IS_LOCK + username, "LOCK");
                stringRedisTemplate.expire(SHIRO_IS_LOCK + username, 1, TimeUnit.HOURS);
            }
        }

        opsForValue.increment(key, 1);
        int leftcount = 5 - Integer.parseInt(opsForValue.get(key).toString());
        log.info("leftcount: " + leftcount);
        opsForValue.set(SHIRO_LOGIN_LEFTCOUNT + username, String.valueOf(leftcount));
        stringRedisTemplate.expire(SHIRO_LOGIN_LEFTCOUNT + username, 1, TimeUnit.HOURS);

        try {
            if ("LOCK".equals(opsForValue.get(SHIRO_IS_LOCK + username))){
                session.setAttribute("user", "lock");
                session.setTimeout(60);
                throw new LockedAccountException();
            }

            UsernamePasswordToken token = new UsernamePasswordToken(username, password, rememberMe);
            SecurityUtils.getSubject().login(token);

            resultMap.put("status", 200);
            resultMap.put("message", "登录成功");
            opsForValue.set(key, "0");
            opsForValue.set(SHIRO_IS_LOCK + username, "UNLOCK");
            map.put("user",username);
            //存储当前登录用户信息
            SecurityUtils.getSubject().getSession().setAttribute("userinfo",sysUserService.findUserByName(username));
            log.info("userinfo: " + sysUserService.findUserByName(username));
        }catch (LockedAccountException e) {
            resultMap.put("status", 400);
            resultMap.put("message", "您已经被锁定1小时！");
        }catch (UnknownAccountException e) {
            resultMap.put("status", 300);
            resultMap.put("message", opsForValue.get(SHIRO_LOGIN_LEFTCOUNT+username));
        }catch(IncorrectCredentialsException e1){
            resultMap.put("status", 100);
            resultMap.put("message", opsForValue.get(SHIRO_LOGIN_LEFTCOUNT+username));
        }catch (Exception e) {
            resultMap.put("status", 600);
            resultMap.put("message", opsForValue.get(SHIRO_LOGIN_LEFTCOUNT+username));
        }

        return resultMap;
    }

    @RequestMapping(value = "/error", method = RequestMethod.GET)
    public String toError(){

        return "error";
    }

}