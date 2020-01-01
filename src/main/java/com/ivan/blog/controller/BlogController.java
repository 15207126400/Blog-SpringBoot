package com.ivan.blog.controller;

import com.ivan.blog.Exception.TemplateException;
import com.ivan.blog.Exception.Enum.CommonEnum;
import com.ivan.blog.annotation.MyLog;
import com.ivan.blog.model.BlogArticle;
import com.ivan.blog.model.BlogCategory;
import com.ivan.blog.model.BlogComment;
import com.ivan.blog.model.dto.BlogArticleDTO;
import com.ivan.blog.model.dto.BlogCommentDTO;
import com.ivan.blog.service.*;
import com.ivan.blog.utils.R;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.*;

/*
 *  @Author: Ivan
 *  @Description:
 *  @Date: 2019/12/2 11:42
 */
@Controller
@CrossOrigin        //解决前端跨域问题
@RequestMapping("/blog")
@AllArgsConstructor
@Slf4j
public class BlogController {
    private final BlogArticleService blogArticleService;
    private final BlogCategoryService blogCategoryService;
    private final BlogCommentService blogCommentService;
    private final StatisticsService statisticsService;

    /**
     * 访问博客首页
     * @return
     */
    @MyLog("访问博客首页")
    @RequestMapping("/blogIndex")
    @ResponseBody
    public R blogIndex(){
        List<BlogArticle> result = blogArticleService.selectListByRand();
        if(CollectionUtils.isEmpty(result)){
            throw new TemplateException(CommonEnum.ARTICLE_NULL);
        }

        return R.ok(result);
    }

    /**
     * 获取文章列表 ---- 轮播图
     * @return
     */
    @RequestMapping("/getArticleList")
    @ResponseBody
    public R getArticleList(){
        List<BlogArticleDTO> result = blogArticleService.getArticleList();
        if(CollectionUtils.isEmpty(result)){
            throw new TemplateException(CommonEnum.ARTICLE_NULL);
        }
        //查询文章分类
        for(BlogArticleDTO item : result){
            List<BlogCategory> categorys = blogCategoryService.selectCategoryByArticel(item.getId());
            item.setCategory(extCategory(categorys).toString());
        }


        return R.ok(result);
    }

    /**
     * 根据文章标签查询文章列表
     * @return
     */
    @RequestMapping("/getArticleListByCategory")
    @ResponseBody
    public R getArticleListByCategory(Integer categoryId){
        List<BlogArticleDTO> result = blogArticleService.selectListByCategory(categoryId);
        if(CollectionUtils.isEmpty(result)){
            throw new TemplateException(CommonEnum.ARTICLE_NULL);
        }

        //查询文章分类
        for(BlogArticleDTO item : result){
            List<BlogCategory> categorys = blogCategoryService.selectCategoryByArticel(item.getId());
            item.setCategory(extCategory(categorys).toString());
        }

        return R.ok(result);
    }

    /**
     * 获取文章详情
     * @param id
     * @return
     */
    @MyLog("访问博文内容")
    @RequestMapping("/getArticle")
    @ResponseBody
    public R getArticle(Integer id){
        BlogArticleDTO result = blogArticleService.selectById(id);
        List<BlogCategory> categorys = blogCategoryService.selectCategoryByArticel(id);

        result.setCategory(extCategory(categorys).toString());

        return R.ok(result);
    }

    /**
     * 提取文章标签名称
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
    public R getCategoryList(){
        List<BlogCategory> result = blogCategoryService.list();
        if(CollectionUtils.isEmpty(result)){
            throw new TemplateException(CommonEnum.CATEGORY_NULL);
        }

        return R.ok(result);
    }

    /**
     * 随机获取文章 ---- 三条数据
     * @return
     */
    @RequestMapping("/getListByRand")
    @ResponseBody
    public R getListByRand(){
        List<BlogArticle> result = blogArticleService.selectListByRand();
        if(CollectionUtils.isEmpty(result)){
            throw new TemplateException(CommonEnum.ARTICLE_NULL);
        }

        return R.ok(result);
    }

    /**
     * 发表评论
     * @return
     */
    @MyLog("发表评论")
    @RequestMapping("/postComment")
    @ResponseBody
    public R postComment(BlogCommentDTO blogCommentDTO){
        blogCommentService.postComment(blogCommentDTO);

        return R.ok();
    }

    /**
     * 获取评论列表数据
     * @return
     */
    @RequestMapping("/getCommentList")
    @ResponseBody
    public R getCommentList(Integer articleId){
        //查询当前文章下的所有评论
        List<BlogComment> result = blogCommentService.selectByArticel(articleId);

        return R.ok(result);
    }

    /**
     * 统计各数量
     * @return
     */
    @MyLog("访问博主信息")
    @RequestMapping("/getStatistical")
    @ResponseBody
    public R getStatistical(){
        Map<String, Integer> result = statisticsService.blogOv();

        return R.ok(result);
    }

}
