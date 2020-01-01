package com.ivan.blog.annotation.aspect;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ivan.blog.annotation.RequestLimit;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.support.atomic.RedisAtomicLong;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/*
 *  @Author: Ivan
 *  @Description:   频繁请求限制,切面处理类
 *  @Date: 2020/1/1 15:42
 */
@Aspect
@Component
@AllArgsConstructor
@Slf4j
public class RequestLimitAop {

    private final RedisTemplate redisTemplate;

    @Before("within(@org.springframework.stereotype.Controller *) && @annotation(limit)")
    public void requestLimit(JoinPoint joinPoint, RequestLimit limit) throws Exception {
        Object[] args = joinPoint.getArgs();
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
        HttpServletResponse response = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getResponse();
        String ip = request.getRemoteAddr();
        log.info("访问的ip地址为：{}", ip);
        String url = request.getRequestURL().toString();
        String key = "req_limit_".concat(url).concat("_").concat(ip);
        boolean checkResult = checkByRedis(limit, key);
        if (!checkResult) {
            log.info("requestLimited," + "[用户ip:{}],[访问地址:{}]超过了限定的次数[{}]次", ip, url, limit.count());
            response.setCharacterEncoding("UTF-8");
            response.setHeader("Content-Type", "text/json;charset=UTF-8");
            response.setHeader("icop-content-type", "exception");
            PrintWriter writer = null;
            JsonGenerator jsonGenerator = null;
            try {
                writer = response.getWriter();
                jsonGenerator = (new ObjectMapper()).getFactory().createGenerator(writer);
                jsonGenerator.writeObject("请求过于频繁,超出限制!");
            } catch (IOException e1) {
                e1.printStackTrace();
            } finally {
                writer.flush();
                writer.close();
            }
            throw new Exception("请求过于频繁,超出限制!");
        }
    }

    private boolean checkByRedis(RequestLimit limit, String key) {
        RedisAtomicLong entityIdCounter = new RedisAtomicLong(key, redisTemplate.getConnectionFactory());
        Long increment = entityIdCounter.getAndIncrement();
        //return increment;
        Long incrByCount = redisTemplate.opsForValue().increment(key, increment);
        //Integer incrByCount = redisTemplate.incrBy(key, limit);
        if (incrByCount > limit.count()) {
            /**
             * 该次请求已经超过了规定时间范围内请求的最大次数
             */
            log.info("当前请求次数为：{}，该次请求已经超过了规定时间范围内请求的最大次数", incrByCount);
            return false;
        } else {
            /**
             * 该次请求已经未超过了规定时间范围内请求的最大次数，可以继续请求
             */
            log.info("当前请求次数为：{}，该次请求未超过规定时间范围内请求的最大次数，可以继续请求", incrByCount);
            return true;
        }
    }
}
