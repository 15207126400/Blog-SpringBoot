package com.ivan.blog.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.ivan.blog.annotation.MyLog;
import com.ivan.blog.model.BlogComment;
import com.ivan.blog.service.BlogCommentService;
import jdk.nashorn.internal.runtime.regexp.joni.Warnings;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.HashMap;
import java.util.Map;

/*
 *  @Author: Ivan
 *  @Description:   评论信息
 *  @Date: 2019/11/6 20:07
 */
@Controller
@RequestMapping("/comment")
@Slf4j
public class CommentController {
    @Autowired
    private BlogCommentService blogCommentService;

    /**
     * 评论列表查询.
     * @return
     */
    @MyLog(value = "查询评论列表操作")
    @RequestMapping("/commentList")
    @RequiresPermissions("comment:list")
    public String commentList(Model model){
        model.addAttribute("comments",blogCommentService.selectList());

        return "comment/commentList";
    }

    /**
     * 评论删除;
     * @return
     */
    @MyLog(value = "删除评论信息操作")
    @RequestMapping("/commentDel")
    @ResponseBody
    @RequiresPermissions("comment:del")
    public Map<String, Integer> commentDel(Integer id){
        Map<String, Integer> map = new HashMap<>();
        if(blogCommentService.removeById(id)){
            map.put("status",200);
        }

        return map;
    }
}
