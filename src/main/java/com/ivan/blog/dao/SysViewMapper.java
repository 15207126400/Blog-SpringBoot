package com.ivan.blog.dao;

import com.ivan.blog.model.SysView;

public interface SysViewMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysView record);

    int insertSelective(SysView record);

    SysView selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysView record);

    int updateByPrimaryKey(SysView record);
}