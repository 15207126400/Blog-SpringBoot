package com.ivan.blog.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ivan.blog.dao.BlogCommentMapper;
import com.ivan.blog.model.BlogComment;
import com.ivan.blog.model.dto.BlogCommentDTO;
import com.ivan.blog.service.BlogCommentService;
import lombok.AllArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.*;
import java.util.stream.Collectors;

/*
 *  @Author: Ivan
 *  @Description:
 *  @Date: 2019/12/17 21:16
 */
@Service
@AllArgsConstructor
public class BlogCommentServiceImpl extends ServiceImpl<BlogCommentMapper, BlogComment> implements BlogCommentService {

    private final BlogCommentMapper blogCommentMapper;

    @Override
    public List<BlogComment> selectList() {
        return blogCommentMapper.selectList();
    }

    /**
     * 发表评论
     * @return
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public Map<String,Object> postComment(BlogCommentDTO blogCommentDTO){
        Map<String,Object> map = new HashMap<>();

        BlogComment blogComment = new BlogComment();
        BeanUtils.copyProperties(blogCommentDTO,blogComment);

        //保存评论
        int num = blogCommentMapper.insert(blogComment);

        if(num > 0){
            map.put("code",200);
            map.put("msg","发表成功");
        }
        return map;
    }

    /**
     * 根据文章id查找对应的评论
     * @param articleId
     * @return
     */
    @Override
    public List<BlogComment> selectByArticel(Integer articleId) {
        List<BlogComment> blogCommentList = blogCommentMapper.selectByArticel(articleId);
        //递归
        recursiveComments(blogCommentList);

        //有父元素的集合list需要从原list中抹除
        Iterator<BlogComment> it = blogCommentList.iterator();
        while(it.hasNext()){
            BlogComment x = it.next();
            if(x.getParentId() != 0) it.remove();
        }

        return blogCommentList;
    }

    //递归
    private void recursiveComments(List<BlogComment> blogCommentList){
        if (blogCommentList.size() > 0) {
            for (BlogComment blogComment: blogCommentList) {
                //通过父编号查询
                List<BlogComment> blogComments = blogCommentMapper.selectByParent(blogComment.getId());
                blogComment.setBlogCommentList(blogComments);
                recursiveComments(blogComments);
            }
        }
    }

}
