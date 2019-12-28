package com.ivan.blog.service.impl;

import com.ivan.blog.dao.SysDictMapper;
import com.ivan.blog.model.SysDict;
import com.ivan.blog.service.SysDictService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/*
 *  @Author: Ivan
 *  @Description:
 *  @Date: 2019/11/16 17:03
 */
@Service
public class SysDictServiceImpl implements SysDictService {

    @Resource
    private SysDictMapper sysDictMapper;

    @Override
    public List<SysDict> list() {
        return sysDictMapper.list();
    }

    @Override
    public List<SysDict> findListByType(int type) {
        return sysDictMapper.findListByType(type);
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return sysDictMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(SysDict record) {
        return sysDictMapper.insert(record);
    }

    @Override
    public int insertSelective(SysDict record) {
        return sysDictMapper.insertSelective(record);
    }

    @Override
    public SysDict selectByPrimaryKey(Integer id) {
        return sysDictMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(SysDict record) {
        return sysDictMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(SysDict record) {
        return sysDictMapper.updateByPrimaryKey(record);
    }
}
