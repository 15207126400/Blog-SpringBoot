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
    //DTTO 加评论邮箱提醒
    COMMENT_QUEUE("commentQueue");

    /** 名称 */
    private String name;

}
