package com.ivan.blog.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.ivan.blog.model.tool.UserinfoModel;
import com.ivan.blog.mq.Enum.MqEnum;
import com.ivan.blog.mq.mail.MailForbrug;
import com.ivan.blog.mq.mail.MailProduce;
import com.ivan.blog.service.SignService;
import com.ivan.blog.utils.HttpUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Service
@Slf4j
public class SignServiceImpl implements SignService {

    //github获取access_token的请求url
    private final String GET_GITHUB_TOKEN = "https://github.com/login/oauth/access_token";
    //github的client_id
    private final String GITHUB_CLIENT_ID = "6f44473f8efbb96f16fc";
    //github的client_secret
    private final String GITHUB_CLIENT_SECRET = "3552444809655c7d47b60a2a6b3f8a63742339d3";

    @Resource
    private MailProduce mailProduce;

    @Override
    public String githubSign(String code) {
        String userinfo = "";

        //获取access_token
        Map<String, String> tokenMap = new HashMap<>();
        tokenMap.put("client_id",GITHUB_CLIENT_ID);
        tokenMap.put("client_secret",GITHUB_CLIENT_SECRET);
        tokenMap.put("code",code);
        String access_token = HttpUtil.doGet(GET_GITHUB_TOKEN,tokenMap);
        //如果access_token存在
        if(StringUtils.isNotBlank(access_token)){
            //请求用户信息
            String path = "https://api.github.com/user?" + access_token;
            userinfo = HttpUtil.doGet(path);
            if(StringUtils.isNotBlank(userinfo)){
                JSONObject user = JSONObject.parseObject(userinfo);
                if(StringUtils.isNotBlank(user.getString("email"))){
                    String email = user.getString("email");
                    //消费消息 ---登录邮件提示
                    mailProduce.send(email);
                }
            }
        }
        log.info("userinfo: " + userinfo);

        return userinfo;
    }
}
