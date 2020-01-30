package com.ivan.blog.mq.Enum;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum MqEnum {

    /**
     * 测试
     */
    HELLO_QUEUE("helloQueue"),

    /**
     * 业务
     */
    LOGIN_MAIL_QUEUE("loginMailQueue");             //登录邮件提醒

    /** 名称 */
    private String name;

}
