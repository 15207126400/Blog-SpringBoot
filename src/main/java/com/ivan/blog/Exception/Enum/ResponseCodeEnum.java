package com.ivan.blog.Exception.Enum;

import lombok.AllArgsConstructor;
import lombok.Getter;

/*
 *  @Author: Ivan
 *  @Description:   返回信息枚举类
 *  @Date: 2020/1/1 14:43
 */
@Getter
@AllArgsConstructor
public enum ResponseCodeEnum {
    SUCCESS(0,"成功"),
    ERROR(1,"失败");

    private final int code;
    private final String desc;
}
