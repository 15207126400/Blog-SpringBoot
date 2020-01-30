package com.ivan.blog.mq.mail;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.ivan.blog.model.tool.UserinfoModel;
import com.ivan.blog.mq.Enum.MqEnum;
import lombok.AllArgsConstructor;
import org.apache.commons.lang.StringUtils;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/*
 *  @Author: Ivan
 *  @Description:   登录发送邮件 --- 生产者(单生产者)
 *  @Date: 2020/01/26 13:04
 */
@Component
@AllArgsConstructor
public class MailProduce {

    /**
     * AmqpTemplate可以说是RabbitTemplate父类，RabbitTemplate实现类RabbitOperations接口，RabbitOperations继承了AmqpTemplate接口
     */
    private final RabbitTemplate rabbitTemplate;

    /**
     * 用于单生产者-》单消费者测试
     */
    public void send(String email) {
        rabbitTemplate.convertAndSend(MqEnum.LOGIN_MAIL_QUEUE.getName() , email);
    }
}
