package com.jbuild4d.platform.builder.vo;

import com.jbuild4d.base.dbaccess.dbentities.DatasetEntity;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhuangrb
 * Date: 2018/8/8
 * To change this template use File | Settings | File Templates.
 */
public class DataSetVo extends DatasetEntity {

    List<DataSetColumnVo> columnVoList;

    public List<DataSetColumnVo> getColumnVoList() {
        return columnVoList;
    }

    public void setColumnVoList(List<DataSetColumnVo> columnVoList) {
        this.columnVoList = columnVoList;
    }
}
