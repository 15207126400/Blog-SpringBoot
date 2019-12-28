package com.ivan.blog.dao;

import com.ivan.blog.model.SysDict;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;

import java.util.List;

public interface SysDictMapper {
    @Select("select * from sys_dict")
    List<SysDict> list();

    @Select("select * from sys_dict where type_code = #{type_code}")
    List<SysDict> findListByType(int type);

    int deleteByPrimaryKey(Integer id);

    int insert(SysDict record);

    int insertSelective(SysDict record);

    SysDict selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysDict record);

    int updateByPrimaryKey(SysDict record);
}