package com.ivan.blog.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.ivan.blog.annotation.MyLog;
import com.ivan.blog.model.SysLog;
import com.ivan.blog.service.SysLogService;
import com.ivan.blog.service.SysRoleService;
import com.ivan.blog.utils.MD5Util;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/*
 *  @Author: Ivan
 *  @Description:   操作日志信息控制类
 *  @Date: 2019/10/31 09:38
 */
@Controller
@RequestMapping("/log")
@AllArgsConstructor
@Slf4j
public class LogController {

    private final SysLogService sysLogService;

    /**
     * 列表查询.
     * @return
     */
    @MyLog(value = "查询日志列表操作")
    @RequestMapping("/logList")
    @RequiresPermissions("log:list")
    public String logList(Model model){
        LambdaQueryWrapper<SysLog> logLambdaQueryWrapper = Wrappers.<SysLog>lambdaQuery()
                .orderByDesc(SysLog::getId);
        model.addAttribute("logs",sysLogService.list(logLambdaQueryWrapper));

        return "log/logList";
    }

    /**
     * 删除;
     * @return
     */
    @MyLog(value = "删除日志信息操作")
    @RequestMapping("/logDel")
    @ResponseBody
    @RequiresPermissions("log:del")
    public Map<String, Integer> logDel(Integer id){
        Map<String, Integer> map = new HashMap<>();
        boolean result = sysLogService.removeById(id);
        if(result){
            map.put("status",200);
        }

        return map;
    }

}