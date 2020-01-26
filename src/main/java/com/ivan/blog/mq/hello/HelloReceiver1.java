package com.ivan.blog.mq.hello;


import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

/*
 *  @Author: Ivan
 *  @Description:   hello消费者(单消费者)
 *  @Date: 2020/01/26 13:04
 */
@Component
@RabbitListener(queues = "helloQueue")
public class HelloReceiver1 {

    @RabbitHandler
    public void process(String hello) {
        System.out.println("Receiver1  : " + hello);
    }

}
