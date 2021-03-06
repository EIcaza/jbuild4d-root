package com.jbuild4d.base.dbaccess.dbentities;

import com.jbuild4d.base.dbaccess.anno.DBKeyField;
import java.util.Date;

/**
 *
 * This class was generated by MyBatis Generator.
 * This class corresponds to the database table TB4D_TABLE
 *
 * @mbg.generated do_not_delete_during_merge
 */
public class TableEntity {
    //TABLE_ID
    @DBKeyField
    private String tableId;

    //TABLE_CAPTION
    private String tableCaption;

    //TABLE_NAME
    private String tableName;

    //TABLE_DBNAME
    private String tableDbname;

    //TABLE_ORGAN_ID
    private Integer tableOrganId;

    //TABLE_CREATE_TIME
    private Date tableCreateTime;

    //TABLE_CREATER
    private String tableCreater;

    //TABLE_UPDATE_TIME
    private Date tableUpdateTime;

    //TABLE_UPDATER
    private String tableUpdater;

    //TABLE_SERVICE_VALUE
    private String tableServiceValue;

    //TABLE_TYPE
    private String tableType;

    //TABLE_ISSYSTEM
    private String tableIssystem;

    //TABLE_ORDER_NUM
    private Integer tableOrderNum;

    //TABLE_DESC
    private String tableDesc;

    //TABLE_GROUP_ID
    private String tableGroupId;

    //TABLE_STATUS
    private String tableStatus;

    public TableEntity(String tableId, String tableCaption, String tableName, String tableDbname, Integer tableOrganId, Date tableCreateTime, String tableCreater, Date tableUpdateTime, String tableUpdater, String tableServiceValue, String tableType, String tableIssystem, Integer tableOrderNum, String tableDesc, String tableGroupId, String tableStatus) {
        this.tableId = tableId;
        this.tableCaption = tableCaption;
        this.tableName = tableName;
        this.tableDbname = tableDbname;
        this.tableOrganId = tableOrganId;
        this.tableCreateTime = tableCreateTime;
        this.tableCreater = tableCreater;
        this.tableUpdateTime = tableUpdateTime;
        this.tableUpdater = tableUpdater;
        this.tableServiceValue = tableServiceValue;
        this.tableType = tableType;
        this.tableIssystem = tableIssystem;
        this.tableOrderNum = tableOrderNum;
        this.tableDesc = tableDesc;
        this.tableGroupId = tableGroupId;
        this.tableStatus = tableStatus;
    }

    public TableEntity() {
        super();
    }

    public String getTableId() {
        return tableId;
    }

    public void setTableId(String tableId) {
        this.tableId = tableId == null ? null : tableId.trim();
    }

    public String getTableCaption() {
        return tableCaption;
    }

    public void setTableCaption(String tableCaption) {
        this.tableCaption = tableCaption == null ? null : tableCaption.trim();
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName == null ? null : tableName.trim();
    }

    public String getTableDbname() {
        return tableDbname;
    }

    public void setTableDbname(String tableDbname) {
        this.tableDbname = tableDbname == null ? null : tableDbname.trim();
    }

    public Integer getTableOrganId() {
        return tableOrganId;
    }

    public void setTableOrganId(Integer tableOrganId) {
        this.tableOrganId = tableOrganId;
    }

    public Date getTableCreateTime() {
        return tableCreateTime;
    }

    public void setTableCreateTime(Date tableCreateTime) {
        this.tableCreateTime = tableCreateTime;
    }

    public String getTableCreater() {
        return tableCreater;
    }

    public void setTableCreater(String tableCreater) {
        this.tableCreater = tableCreater == null ? null : tableCreater.trim();
    }

    public Date getTableUpdateTime() {
        return tableUpdateTime;
    }

    public void setTableUpdateTime(Date tableUpdateTime) {
        this.tableUpdateTime = tableUpdateTime;
    }

    public String getTableUpdater() {
        return tableUpdater;
    }

    public void setTableUpdater(String tableUpdater) {
        this.tableUpdater = tableUpdater == null ? null : tableUpdater.trim();
    }

    public String getTableServiceValue() {
        return tableServiceValue;
    }

    public void setTableServiceValue(String tableServiceValue) {
        this.tableServiceValue = tableServiceValue == null ? null : tableServiceValue.trim();
    }

    public String getTableType() {
        return tableType;
    }

    public void setTableType(String tableType) {
        this.tableType = tableType == null ? null : tableType.trim();
    }

    public String getTableIssystem() {
        return tableIssystem;
    }

    public void setTableIssystem(String tableIssystem) {
        this.tableIssystem = tableIssystem == null ? null : tableIssystem.trim();
    }

    public Integer getTableOrderNum() {
        return tableOrderNum;
    }

    public void setTableOrderNum(Integer tableOrderNum) {
        this.tableOrderNum = tableOrderNum;
    }

    public String getTableDesc() {
        return tableDesc;
    }

    public void setTableDesc(String tableDesc) {
        this.tableDesc = tableDesc == null ? null : tableDesc.trim();
    }

    public String getTableGroupId() {
        return tableGroupId;
    }

    public void setTableGroupId(String tableGroupId) {
        this.tableGroupId = tableGroupId == null ? null : tableGroupId.trim();
    }

    public String getTableStatus() {
        return tableStatus;
    }

    public void setTableStatus(String tableStatus) {
        this.tableStatus = tableStatus == null ? null : tableStatus.trim();
    }
}