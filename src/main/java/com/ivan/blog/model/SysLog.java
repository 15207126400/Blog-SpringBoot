package com.ivan.blog.model;

import java.io.Serializable;
import java.util.Date;

public class SysLog implements Serializable {
    private static final long serialVersionUID = -1L;

    private Integer id;

    private String username;

    private String operation;

    private String method;

    private String params;

    private Date createTime;

    private String ip;

    private String operateUrl;

    private String operateBy;

    public SysLog(Integer id, String username, String operation, String method, String params, Date createTime, String ip, String operateUrl, String operateBy) {
        this.id = id;
        this.username = username;
        this.operation = operation;
        this.method = method;
        this.params = params;
        this.createTime = createTime;
        this.ip = ip;
        this.operateUrl = operateUrl;
        this.operateBy = operateBy;
    }

    public SysLog() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation == null ? null : operation.trim();
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method == null ? null : method.trim();
    }

    public String getParams() {
        return params;
    }

    public void setParams(String params) {
        this.params = params == null ? null : params.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip == null ? null : ip.trim();
    }

    public String getOperateUrl() {
        return operateUrl;
    }

    public void setOperateUrl(String operateUrl) {
        this.operateUrl = operateUrl == null ? null : operateUrl.trim();
    }

    public String getOperateBy() {
        return operateBy;
    }

    public void setOperateBy(String operateBy) {
        this.operateBy = operateBy == null ? null : operateBy.trim();
    }
}