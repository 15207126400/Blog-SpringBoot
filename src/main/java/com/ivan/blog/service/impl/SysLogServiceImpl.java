package com.ivan.blog.service.impl;

import com.ivan.blog.dao.SysLogMapper;
import com.ivan.blog.model.SysLog;
import com.ivan.blog.service.SysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

/*
 *  @Author: Ivan
 *  @Description:
 *  @Date: 2019/11/14 09:49
 */
@Service
public class SysLogServiceImpl implements SysLogService {

    @Resource
    private SysLogMapper sysLogMapper;

    @Override
    public List<SysLog> list() {
        return sysLogMapper.list();
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return sysLogMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(SysLog record) {
        return sysLogMapper.insert(record);
    }

    @Override
    public int insertSelective(SysLog record) {
        return sysLogMapper.insertSelective(record);
    }

    @Override
    public SysLog selectByPrimaryKey(Integer id) {
        return sysLogMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(SysLog record) {
        return sysLogMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(SysLog record) {
        return sysLogMapper.updateByPrimaryKey(record);
    }
}
