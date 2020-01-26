package com.ivan.blog.mq.hello;

import com.ivan.blog.config.RabbitmqConfig;
import com.ivan.blog.mq.Enum.MqEnum;
import lombok.AllArgsConstructor;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.stereotype.Component;
import java.util.Date;

/*
 *  @Author: Ivan
 *  @Description:   hello生产者(单生产者)
 *  @Date: 2020/01/26 13:04
 */
@Component
@AllArgsConstructor
public class HelloSender1 {

    /**
     * AmqpTemplate可以说是RabbitTemplate父类，RabbitTemplate实现类RabbitOperations接口，RabbitOperations继承了AmqpTemplate接口
     */
    private final RabbitTemplate rabbitTemplate;

    /**
     * 用于单生产者-》单消费者测试
     */
    public void send() {
        String sendMsg = "hello1 " + new Date();
        //System.out.println("Sender1 : " + sendMsg);
        rabbitTemplate.convertAndSend(MqEnum.HELLO_QUEUE.getName() , sendMsg);
    }
}
