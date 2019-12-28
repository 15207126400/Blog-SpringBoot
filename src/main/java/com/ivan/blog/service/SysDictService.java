package com.ivan.blog.service;

import com.ivan.blog.model.SysDict;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/*
 *  @Author: Ivan
 *  @Description:
 *  @Date: 2019/11/16 17:03
 */
public interface SysDictService {
    List<SysDict> list();

    List<SysDict> findListByType(int type);

    int deleteByPrimaryKey(Integer id);

    int insert(SysDict record);

    int insertSelective(SysDict record);

    SysDict selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysDict record);

    int updateByPrimaryKey(SysDict record);
}
