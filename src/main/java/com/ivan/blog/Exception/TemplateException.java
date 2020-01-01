package com.ivan.blog.Exception;

import com.ivan.blog.Exception.Enum.CommonEnum;

/*
 *  @Author: Ivan
 *  @Description:
 *  @Date: 2020/1/1 14:53
 */
public class TemplateException extends BizException{
    public TemplateException() {
    }

    public TemplateException(String message) {
        super(message);
    }

    public TemplateException(CommonEnum codeEnum, Object... args) {
        super(codeEnum, args);
    }
}
