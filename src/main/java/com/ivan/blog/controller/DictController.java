package com.ivan.blog.controller;

import com.ivan.blog.annotation.MyLog;
import com.ivan.blog.model.SysDict;
import com.ivan.blog.service.SysDictService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.HashMap;
import java.util.Map;

/*
 *  @Author: Ivan
 *  @Description:   数据字典控制类
 *  @Date: 2019/10/31 09:38
 */
@Controller
@RequestMapping("/dict")
@AllArgsConstructor
@Slf4j
public class DictController {

    private final SysDictService sysDictService;

    /**
     * 数据字典列表查询.
     * @return
     */
    @MyLog(value = "查询数据字典列表操作")
    @RequestMapping("/dictList")
    @RequiresPermissions("dict:list")
    public String dictList(Model model){

        model.addAttribute("dicts",sysDictService.list());
        log.info("【执行数据字典列表查询操作: /dict/dictList】");

        return "dict/dictList";
    }

    /**
     * 新增 页面跳转
     * @return
     */
    @RequestMapping("/dictAdd")
    @RequiresPermissions("dict:add")
    public String dictAdd(Model model){
        model.addAttribute("dicts",sysDictService.findListByType(1000));

        return "dict/dictAdd";
    }

    /**
     * 修改 页面跳转
     * @return
     */
    @RequestMapping("/dictPut/{id}")
    @RequiresPermissions("dict:put")
    public String dictPut(Model model ,@PathVariable("id") Integer id){
        model.addAttribute("dict",sysDictService.selectByPrimaryKey(id));
        model.addAttribute("dicts",sysDictService.findListByType(1000));

        return "dict/dictPut";
    }

    @MyLog(value = "新增或修改数据字典操作")
    @RequestMapping("insertOrUpdate")
    @ResponseBody
    public Map<String,Object> insertOrUpdate(SysDict sysDict,String op){
        Map<String,Object> map = new HashMap<>();
        if(op.equals("1")){
            int num = sysDictService.insert(sysDict);
            if(num > 0){
                map.put("status",200);
            }
        } else {
            int num = sysDictService.updateByPrimaryKeySelective(sysDict);
            if(num > 0){
                map.put("status",200);
            }
        }

        return map;
    }

    /**
     * 数据字典删除;
     * @return
     */
    @MyLog(value = "删除数据字典操作")
    @RequestMapping("/dictDel")
    @ResponseBody
    @RequiresPermissions("dict:del")
    public Map<String, Integer> dictDel(Integer id){
        Map<String, Integer> map = new HashMap<>();
        int num = sysDictService.deleteByPrimaryKey(id);
        if(num > 0){
            map.put("status",200);
        }

        return map;
    }

}