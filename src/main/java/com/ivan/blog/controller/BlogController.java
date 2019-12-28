package com.ivan.blog.controller;

import com.ivan.blog.annotation.MyLog;
import com.ivan.blog.model.BlogArticle;
import com.ivan.blog.model.BlogCategory;
import com.ivan.blog.model.BlogComment;
import com.ivan.blog.model.dto.BlogArticleDTO;
import com.ivan.blog.model.dto.BlogCommentDTO;
import com.ivan.blog.service.BlogArticleService;
import com.ivan.blog.service.BlogCategoryService;
import com.ivan.blog.service.BlogCommentService;
import com.ivan.blog.service.StatisticsService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/*
 *  @Author: Ivan
 *  @Description:
 *  @Date: 2019/12/2 11:42
 */
@Controller
//@CrossOrigin        //解决前端跨域问题
@RequestMapping("/blog")
@AllArgsConstructor
@Slf4j
public class BlogController {
    private final BlogArticleService blogArticleService;
    private final BlogCategoryService blogCategoryService;
    private final BlogCommentService blogCommentService;
    private final StatisticsService statisticsService;

    /**
     * 获取文章列表 ---- 轮播图
     * @return
     */
    @RequestMapping("/getArticleList")
    @ResponseBody
    public List<BlogArticleDTO> getArticleList(){
        List<BlogArticleDTO> result = blogArticleService.getArticleList();
        //查询文章分类
        for(BlogArticleDTO item : result){
            List<BlogCategory> categorys = blogCategoryService.selectCategoryByArticel(item.getId());
            item.setCategory(extCategory(categorys).toString());
        }


        return result;
    }

    /**
     * 根据文章标签查询文章列表
     * @return
     */
    @RequestMapping("/getArticleListByCategory")
    @ResponseBody
    public List<BlogArticleDTO> getArticleListByCategory(Integer categoryId){
        List<BlogArticleDTO> result = blogArticleService.selectListByCategory(categoryId);

        //查询文章分类
        for(BlogArticleDTO item : result){
            List<BlogCategory> categorys = blogCategoryService.selectCategoryByArticel(item.getId());
            item.setCategory(extCategory(categorys).toString());
        }

        return result;
    }

    /**
     * 获取文章详情
     * @param id
     * @return
     */
    @MyLog("访问博客首页")
    @RequestMapping("/getArticle")
    @ResponseBody
    public BlogArticleDTO getArticle(Integer id){
        BlogArticleDTO result = blogArticleService.selectById(id);
        List<BlogCategory> categorys = blogCategoryService.selectCategoryByArticel(id);

        result.setCategory(extCategory(categorys).toString());

        return result;
    }

    /**
     * 提取文章类型名称
     * @return
     */
    private List<String> extCategory(List<BlogCategory> categorys){
        List<String> list = new ArrayList<>();
        for(BlogCategory item : categorys){
            list.add(item.getName());
        }

        return list;
    }

    /**
     * 获取分类列表
     * @return
     */
    @RequestMapping("/getCategoryList")
    @ResponseBody
    public List<BlogCategory> getCategoryList(){
        List<BlogCategory> result = blogCategoryService.list();

        return result;
    }

    /**
     * 随机获取文章 ---- 三条数据
     * @return
     */
    @RequestMapping("/getListByRand")
    @ResponseBody
    public List<BlogArticle> getListByRand(){
        List<BlogArticle> result = blogArticleService.selectListByRand();

        return result;
    }

    /**
     * 发表评论
     * @return
     */
    @MyLog("发表了评论")
    @RequestMapping("/postComment")
    @ResponseBody
    public Map<String,Object> postComment(BlogCommentDTO blogCommentDTO){
        Map<String,Object> result = blogCommentService.postComment(blogCommentDTO);

        return result;
    }

    /**
     * 获取评论列表数据
     * @return
     */
    @RequestMapping("/getCommentList")
    @ResponseBody
    public List<BlogComment> getCommentList(Integer articleId){
        //查询当前文章下的所有评论
        List<BlogComment> blogComments = blogCommentService.selectByArticel(articleId);

        return blogComments;
    }

    /**
     * 统计各数量
     * @return
     */
    @MyLog("访问了博主信息")
    @RequestMapping("/getStatistical")
    @ResponseBody
    public Map<String,Integer> getStatistical(){

        return statisticsService.blogOv();
    }

}
