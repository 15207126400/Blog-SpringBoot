package com.ivan.blog.controller;

import com.alibaba.fastjson.JSON;
import com.ivan.blog.annotation.MyLog;
import com.ivan.blog.model.SysPermission;
import com.ivan.blog.model.SysRole;
import com.ivan.blog.model.SysUser;
import com.ivan.blog.model.tool.TreeModel;
import com.ivan.blog.service.SysPermissionService;
import com.ivan.blog.service.SysRoleService;
import com.ivan.blog.service.SysUserService;
import com.ivan.blog.utils.CurrentUserUtil;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/*
 *  @Author: Ivan
 *  @Description:   角色信息控制类
 *  @Date: 2019/10/31 09:38
 */
@Controller
@RequestMapping("/role")
public class RoleController {

    @Autowired
    private SysRoleService sysRoleService;
    @Autowired
    private SysUserService sysUserService;

    /**
     * 角色查询.
     * @return
     */
    @MyLog(value = "查询角色列表操作")
    @RequestMapping("/roleList")
    @RequiresPermissions("role:list")
    public String roleInfo(Model model){
        model.addAttribute("roles",sysRoleService.list());

        return "role/roleList";
    }

    /**
     * 新增 页面跳转
     * @return
     */
    @RequestMapping("/roleAdd")
    @RequiresPermissions("role:add")
    public String roleAdd(Model model){
        model.addAttribute("jsonData",sysRoleService.getTreeByRole());

        return "role/roleAdd";
    }

    /**
     * 修改 页面跳转
     * @return
     */
    @RequestMapping("/rolePut/{id}")
    @RequiresPermissions("role:put")
    public String rolePut(Model model ,@PathVariable("id") Integer id){
        model.addAttribute("role",sysRoleService.selectByPrimaryKey(id));
        model.addAttribute("jsonData",sysRoleService.getTreeByRole(String.valueOf(id)));

        return "role/rolePut";
    }

    @MyLog(value = "新增或修改角色信息操作")
    @RequestMapping("insertOrUpdate")
    @ResponseBody
    public Map<String,Object> insertOrUpdate(SysRole sysRole, String op){
        Map<String,Object> map = new HashMap<>();
        if(op.equals("1")){
            if(sysRoleService.insertSelective(sysRole) > 0){
                map.put("status",200);
            }
        } else {
            if(sysRoleService.updateByPrimaryKeySelective(sysRole) > 0){
                map.put("status",200);
            }
        }
        return map;
    }

    /**
     * 角色删除;
     * @return
     */
    @MyLog(value = "删除角色信息操作")
    @RequestMapping("/roleDel")
    @ResponseBody
    @RequiresPermissions("role:del")
    public Map<String, Integer> roleDel(Integer id){
        Map<String, Integer> map = new HashMap<>();
        if(sysRoleService.deleteByPrimaryKey(id) > 0){
            map.put("status",200);
        }

        return map;
    }

}