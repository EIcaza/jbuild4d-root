package com.jbuild4d.web.platform.model;

import com.jbuild4d.base.dbaccess.dbentities.TableEntity;
import com.jbuild4d.base.dbaccess.dbentities.TableGroupEntity;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhuangrb
 * Date: 2018/8/10
 * To change this template use File | Settings | File Templates.
 */
public class ZTreeNodeVo {
    String value;
    String text;
    String id;
    String parentId;
    String attr1;
    String attr2;
    String attr3;
    String attr4;

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getAttr1() {
        return attr1;
    }

    public void setAttr1(String attr1) {
        this.attr1 = attr1;
    }

    public String getAttr2() {
        return attr2;
    }

    public void setAttr2(String attr2) {
        this.attr2 = attr2;
    }

    public String getAttr3() {
        return attr3;
    }

    public void setAttr3(String attr3) {
        this.attr3 = attr3;
    }

    public String getAttr4() {
        return attr4;
    }

    public void setAttr4(String attr4) {
        this.attr4 = attr4;
    }

    public static List<ZTreeNodeVo> parseTableToZTreeNodeList(List<TableGroupEntity> tableGroupEntityList, List<TableEntity> tableEntityList){
        List<ZTreeNodeVo> result=new ArrayList<>();
        for (TableGroupEntity tableGroupEntity : tableGroupEntityList) {
            ZTreeNodeVo nodeVo=new ZTreeNodeVo();
            nodeVo.setId(tableGroupEntity.getTableGroupId());
            nodeVo.setValue(tableGroupEntity.getTableGroupValue());
            nodeVo.setText(tableGroupEntity.getTableGroupText());
            nodeVo.setParentId(tableGroupEntity.getTableGroupParentId());
            result.add(nodeVo);
        }

        for (TableEntity tableEntity : tableEntityList) {
            ZTreeNodeVo nodeVo=new ZTreeNodeVo();
            nodeVo.setId(tableEntity.getTableId());
            nodeVo.setValue(tableEntity.getTableName());
            nodeVo.setText(tableEntity.getTableCaption()+"【"+tableEntity.getTableName()+"】");
            nodeVo.setParentId(tableEntity.getTableGroupId());
            result.add(nodeVo);
        }

        return result;

    }
}
