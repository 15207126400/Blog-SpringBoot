package com.ivan.blog.service;

import com.ivan.blog.model.SysLog;

import java.util.List;

/*
 *  @Author: Ivan
 *  @Description:
 *  @Date: 2019/11/14 09:48
 */
public interface SysLogService {
    List<SysLog> list();

    int deleteByPrimaryKey(Integer id);

    int insert(SysLog record);

    int insertSelective(SysLog record);

    SysLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysLog record);

    int updateByPrimaryKey(SysLog record);
}
