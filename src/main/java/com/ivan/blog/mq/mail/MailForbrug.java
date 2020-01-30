package com.ivan.blog.mq.mail;

import com.ivan.blog.model.tool.EmailModel;
import com.ivan.blog.model.tool.UserinfoModel;
import com.ivan.blog.service.MailService;
import com.ivan.blog.utils.MailUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/*
 *  @Author: Ivan
 *  @Description:   登录发送邮件 --- 消费者(单消费者)
 *  @Date: 2020/01/26 13:04
 */
@Component
@Slf4j
public class MailForbrug {

    @Resource
    private MailService mailService;

    @RabbitListener(queues="loginMailQueue")
    public void process(String email) {
        String mail = email.replace("\"", "");
        log.info("mail: " + mail);

        EmailModel emailModel = new EmailModel();
        emailModel.setTo(mail);
        emailModel.setSubject("登录提醒");
        emailModel.setText("恭喜您登录成功! 若有任何建议或疑问, 可以回复邮件或者加博主QQ: 286835776!");
        mailService.sendSimpleMail(emailModel);
    }
}
