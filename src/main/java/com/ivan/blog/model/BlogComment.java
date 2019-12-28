package com.ivan.blog.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class BlogComment implements Serializable {
    private static final long serialVersionUID = -1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String content;

    private String email;

    private String name;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date createTime;

    private Integer articleId;

    private Integer parentId;

    /**
     * 子评论集合
     */
    private List<BlogComment> blogCommentList;

}