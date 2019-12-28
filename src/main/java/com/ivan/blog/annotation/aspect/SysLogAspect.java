package com.ivan.blog.annotation.aspect;

import com.alibaba.fastjson.JSON;
import com.ivan.blog.annotation.MyLog;
import com.ivan.blog.model.SysLog;
import com.ivan.blog.model.SysUser;
import com.ivan.blog.service.SysLogService;
import com.ivan.blog.utils.CurrentUserUtil;
import com.ivan.blog.utils.IpAndAddrUtil;
import com.ivan.blog.utils.IpUtil;
import lombok.AllArgsConstructor;
import org.apache.commons.lang.StringUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.Date;

/*
 *  @Author: Ivan
 *  @Description:   操作日志,切面处理类
 *  @Date: 2019/11/14 09:46
 */
@Aspect
@Component
@AllArgsConstructor
public class SysLogAspect {
    private final SysLogService sysLogService;

    //定义切点 @Pointcut
    //在注解的位置切入代码
    @Pointcut("@annotation( com.ivan.blog.annotation.MyLog)")
    public void logPoinCut() {
    }

    //切面 配置通知
    @AfterReturning("logPoinCut()")
    public void saveSysLog(JoinPoint joinPoint) {
        //保存日志
        SysLog sysLog = new SysLog();

        //获取用户名
        SysUser sysUser = CurrentUserUtil.getCurrentUserinfo();
        if(sysUser != null){
            sysLog.setUsername(sysUser.getUsername());
        } else {
            sysLog.setUsername("博客访问用户");
        }

        //从切面织入点处通过反射机制获取织入点处的方法
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        Method method = signature.getMethod();

        //获取操作
        MyLog myLog = method.getAnnotation(MyLog.class);
        if (myLog != null) {
            String value = myLog.value();
            //保存获取的操作
            sysLog.setOperation(value);
        }

        //获取请求的类名
        String className = joinPoint.getTarget().getClass().getName();
        //获取请求的方法名
        String methodName = method.getName();
        sysLog.setMethod(className + "." + methodName);

        //获取用户ip地址
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        sysLog.setIp(IpAndAddrUtil.getIp(request));

        //获取浏览器名称
        sysLog.setBrowser(IpAndAddrUtil.getBrowserName(request));

        //获取浏览器版本
        sysLog.setVersion(IpAndAddrUtil.getBrowserVersion(request));

        //获取操作系统
        sysLog.setSystem(IpAndAddrUtil.getOsName(request));

        //获取当前时间
        sysLog.setCreateTime(new Date());

        //调用service保存SysLog实体类到数据库
        sysLogService.save(sysLog);
    }
}
