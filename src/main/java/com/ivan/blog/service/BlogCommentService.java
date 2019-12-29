package com.ivan.blog.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ivan.blog.model.BlogComment;
import com.ivan.blog.model.dto.BlogCommentDTO;

import java.util.List;
import java.util.Map;

/*
 *  @Author: Ivan
 *  @Description:
 *  @Date: 2019/12/17 21:16
 */
public interface BlogCommentService extends IService<BlogComment> {

    List<BlogComment> selectList();

    BlogComment selectById(Integer id);

    Map<String,Object> postComment(BlogCommentDTO blogCommentDTO);

    List<BlogComment> selectByArticel(Integer articleId);
}
