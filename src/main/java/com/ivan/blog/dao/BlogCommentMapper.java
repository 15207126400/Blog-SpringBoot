package com.ivan.blog.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ivan.blog.model.BlogComment;
import java.util.List;

public interface BlogCommentMapper extends BaseMapper<BlogComment> {

    List<BlogComment> selectList();

    BlogComment selectById(Integer id);

    /**
     * 根据文章id查询评论列表
     * @param articleId
     * @return
     */
    List<BlogComment> selectByArticel(Integer articleId);

    /**
     * 通过父编号查询文章列表
     * @param parentId
     * @return
     */
    List<BlogComment> selectByParent(Integer parentId);
}