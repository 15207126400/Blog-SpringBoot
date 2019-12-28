package com.ivan.blog.dao;

import com.ivan.blog.model.SysLog;
import org.apache.ibatis.annotations.Select;

import java.util.List;


public interface SysLogMapper {
    @Select("select * from sys_log order by id desc")
    List<SysLog> list();

    int deleteByPrimaryKey(Integer id);

    int insert(SysLog record);

    int insertSelective(SysLog record);

    SysLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysLog record);

    int updateByPrimaryKey(SysLog record);
}