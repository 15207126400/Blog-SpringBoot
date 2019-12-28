package com.ivan.blog.model;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.util.Date;

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SysView {
    private Integer id;

    private String ip;

    private Date createTime;

}