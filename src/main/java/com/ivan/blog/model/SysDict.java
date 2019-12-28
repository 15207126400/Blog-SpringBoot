package com.ivan.blog.model;

import java.io.Serializable;

public class SysDict implements Serializable {
    private static final long serialVersionUID = -1L;

    private Integer id;

    private Integer typeCode;

    private String typeValue;

    private Integer dictCode;

    private String dictValue;

    private String status;

    public SysDict(Integer id, Integer typeCode, String typeValue, Integer dictCode, String dictValue, String status) {
        this.id = id;
        this.typeCode = typeCode;
        this.typeValue = typeValue;
        this.dictCode = dictCode;
        this.dictValue = dictValue;
        this.status = status;
    }

    public SysDict() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTypeCode() {
        return typeCode;
    }

    public void setTypeCode(Integer typeCode) {
        this.typeCode = typeCode;
    }

    public String getTypeValue() {
        return typeValue;
    }

    public void setTypeValue(String typeValue) {
        this.typeValue = typeValue == null ? null : typeValue.trim();
    }

    public Integer getDictCode() {
        return dictCode;
    }

    public void setDictCode(Integer dictCode) {
        this.dictCode = dictCode;
    }

    public String getDictValue() {
        return dictValue;
    }

    public void setDictValue(String dictValue) {
        this.dictValue = dictValue == null ? null : dictValue.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }
}