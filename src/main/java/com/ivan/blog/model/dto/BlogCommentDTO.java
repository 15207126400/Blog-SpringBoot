package com.ivan.blog.model.dto;

import com.ivan.blog.model.BlogComment;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import java.util.List;

/*
 *  @Author: Ivan
 *  @Description:
 *  @Date: 2019/12/18 22:19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class BlogCommentDTO extends BlogComment {

    private List<BlogComment> childs;
}
