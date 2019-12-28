package com.ivan.blog.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.ivan.blog.annotation.MyLog;
import com.ivan.blog.model.SysView;
import com.ivan.blog.service.BlogCommentService;
import com.ivan.blog.service.SysViewService;
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
 *  @Description:   浏览量信息
 *  @Date: 2019/11/6 20:07
 */
@Controller
@RequestMapping("/view")
@Slf4j
public class ViewController {
    @Autowired
    private SysViewService sysViewService;

    /**
     * 浏览量列表查询.
     * @return
     */
    @MyLog(value = "查询浏览量列表操作")
    @RequestMapping("/viewList")
    @RequiresPermissions("views:list")
    public String commentList(Model model){
        LambdaQueryWrapper<SysView> lambdaQueryWrapper = Wrappers.<SysView>lambdaQuery()
                .orderByDesc(SysView::getId);
        model.addAttribute("views",sysViewService.list(lambdaQueryWrapper));

        return "view/viewList";
    }

    /**
     * 浏览量删除;
     * @return
     */
    @MyLog(value = "删除浏览量信息操作")
    @RequestMapping("/viewDel")
    @ResponseBody
    @RequiresPermissions("view:del")
    public Map<String, Integer> commentDel(Integer id){
        Map<String, Integer> map = new HashMap<>();
        if(sysViewService.removeById(id)){
            map.put("status",200);
        }

        return map;
    }
}
