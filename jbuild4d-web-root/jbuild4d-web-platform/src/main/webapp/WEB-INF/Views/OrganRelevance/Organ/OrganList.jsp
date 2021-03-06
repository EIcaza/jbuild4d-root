<%--
  Created by IntelliJ IDEA.
  User: zhuangrb
  Date: 2018/7/27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/Views/TagLibs/TagLib.jsp" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="/WEB-INF/Views/TagLibs/GeneralLib.jsp" %>
    <%@ include file="/WEB-INF/Views/TagLibs/IViewLib.jsp" %>
    <%@ include file="/WEB-INF/Views/TagLibs/JQueryUILib.jsp" %>
    <%@ include file="/WEB-INF/Views/TagLibs/ZTreeLib.jsp" %>
    <%@ include file="/WEB-INF/Views/TagLibs/TreeTableLib.jsp" %>
    <%@ include file="/WEB-INF/Views/TagLibs/ThemesLib.jsp" %>
</head>
<body>
<div id="appList">
    <div class="list-button-outer-wrap" id="list-button-wrap">
        <div class="list-button-inner-wrap" style="margin-bottom: 10px">
            <i-button type="success" @click="add()"><Icon type="plus"></Icon> 新增 </i-button>
            <i-button type="primary" @click="edit()"><Icon type="edit"></Icon> 修改 </i-button>
            <i-button type="primary" @click="del()"><Icon type="trash-a"></Icon> 删除 </i-button>
            <i-button type="primary" @click="view()"><Icon type="android-open"></Icon> 浏览 </i-button>
            <i-button type="primary" @click="statusEnable('启用')"><Icon type="checkmark-round"></Icon> 启用 </i-button>
            <i-button type="primary" @click="statusEnable('禁用')"><Icon type="minus-round"></Icon> 禁用 </i-button>
            <i-button type="primary" @click="move('up')"><Icon type="arrow-up-b"></Icon> 上移</i-button>
            <i-button type="primary" @click="move('down')"><Icon type="arrow-down-b"></Icon> 下移 </i-button>
        </div>
        <div style="clear: both"></div>
    </div>
    <div id="divTreeTable" style="width: 100%;margin: auto"></div>
</div>
</div>
<script>
    var treeTableObj=null;
    var appList=new Vue({
        el:"#appList",
        mounted:function () {
            this.reloadTreeTableData();
        },
        data:{
            treeTableObject:null,
            treeTableConfig:{
                CanDeleteWhenHasChild:false,
                IdField:"organId",
                RowIdPrefix:"TreeTable_",
                LoadChildJsonURL:"",
                LoadChildFunc:null,
                OpenLevel:1,
                ChildTestField:"organChildCount",//判断是否存在子节点的字段，是否>0或者为true，则支持展开
                Templates:[
                    {
                        Title:"组织名称",
                        FieldName:"organName",
                        TitleCellClassName:"TitleCell",
                        Renderer:"Lable",
                        Hidden:false,
                        TitleCellAttrs:{},
                        Width:"40"
                    },{
                        Title:"简称",
                        FieldName:"organShortName",
                        TitleCellClassName:"TitleCell",
                        Renderer:"Lable",
                        Hidden:false,
                        TitleCellAttrs:{},
                        Width:"40",
                        TextAlign:"center"
                    },{
                        Title:"创建时间",
                        FieldName:"organCreateTime",
                        TitleCellClassName:"TitleCell",
                        Renderer:"DateTime",
                        Hidden:false,
                        TitleCellAttrs:{},
                        Width:"40",
                        TextAlign:"center"
                    },{
                        Title:"状态",
                        FieldName:"organStatus",
                        TitleCellClassName:"TitleCell",
                        Renderer:"Lable",
                        Hidden:false,
                        TitleCellAttrs:{},
                        Width:"10%",
                        TextAlign:"center"
                    }
                ],
                TableClass:"TreeTable",
                RendererTo:"divTreeTable",//div elem
                TableId:"TreeTable",
                TableAttrs:{cellpadding:"0",cellspacing:"0",border:"0"}
            }
        },
        methods:{
            <!--Dictionary-->
            reloadTreeTableData:function () {
                var url='/PlatForm/OrganRelevance/Organ/GetListData.do';
                var _self=this;
                var senddata={pageSize:2000,pageNum:1};
                AjaxUtility.Post(url, senddata , function (result) {
                    if (result.success) {
                        //debugger;
                        if(result.data==null){
                            result.data=new Array();
                        }
                        var treedata=JsonUtility.ResolveSimpleArrayJsonToTreeJson({
                            KeyField: "organId",
                            RelationField:"organParentId",
                            ChildFieldName:"Nodes"
                        },result.data.list,"0");
                        $("#divTreeTable").html("");
                        _self.treeTableObject=Object.create(TreeTable);
                        _self.treeTableObject.Initialization(_self.treeTableConfig);
                        _self.treeTableObject.LoadJsonData(treedata);
                    }
                    else{
                        DialogUtility.Alert(window, DialogUtility.DialogAlertId, {}, result.message, null);
                    }
                },"json");
            },
            mareSureSelectedTreeTableRow:function (actionText) {
                var nodeData = this.treeTableObject.GetSelectedRowData();
                if (nodeData == null) {
                    DialogUtility.Alert(window, DialogUtility.DialogAlertId, {}, "请选择需要" + actionText + "的节点!", null);
                    return {
                        then: function (func) {
                        }
                    }
                }
                if (nodeData[appList.treeTableConfig.IdField] == "0") {
                    DialogUtility.Alert(window, DialogUtility.DialogAlertId, {}, "不能编辑根节点!", null);
                    return {
                        then: function (func) {
                        }
                    }
                }
                return {
                    then: function (func) {
                        func(nodeData);
                    }
                }
                return {
                    then: function (func) {
                    }
                }
            },
            add:function(){
                if(this.treeTableObject!=null){
                    var nodeData=this.treeTableObject.GetSelectedRowData();
                    if(nodeData == null) {
                        DialogUtility.Alert(window,DialogUtility.DialogAlertId,{},"请选择上级组织!",null);
                        return false;
                    }
                    var url=BaseUtility.BuildUrl("/PlatForm/OrganRelevance/Organ/Detail.do?parentId="+nodeData[appList.treeTableConfig.IdField]+"&op=add");
                    DialogUtility.Frame_OpenIframeWindow(window,DialogUtility.DialogId,url,{title:"组织管理"},1);
                }
            },
            edit:function(){
                this.mareSureSelectedTreeTableRow("编辑").then(function (nodeData) {
                    var url = BaseUtility.BuildUrl("/PlatForm/OrganRelevance/Organ/Detail.do?op=update&recordId=" + nodeData[appList.treeTableConfig.IdField]);
                    DialogUtility.Frame_OpenIframeWindow(window, DialogUtility.DialogId, url, {title: "组织管理"}, 1);
                })
            },
            del:function(){
                var _self=this;
                this.mareSureSelectedTreeTableRow("删除").then(function (nodeData) {
                    var url="/PlatForm/OrganRelevance/Organ/Delete.do";
                    var recordId=nodeData[appList.treeTableConfig.IdField];
                    DialogUtility.Comfirm(window, "确认要删除选定的节点吗？", function () {
                        AjaxUtility.Post(url, {recordId: recordId}, function (result) {
                            if (result.success) {
                                DialogUtility.Alert(window, DialogUtility.DialogAlertId, {}, result.message, function () {
                                    _self.treeTableObject.DeleteRow(recordId);

                                });
                            }
                            else {
                                DialogUtility.Alert(window, DialogUtility.DialogAlertId, {}, result.message, null);
                            }
                        }, "json");
                    });
                })
            },
            view:function(){
                this.mareSureSelectedTreeTableRow("编辑").then(function (nodeData) {
                    var url = BaseUtility.BuildUrl("/PlatForm/OrganRelevance/Organ/Detail.do?op=view&recordId=" + nodeData[appList.treeTableConfig.IdField]);
                    DialogUtility.Frame_OpenIframeWindow(window, DialogUtility.DialogId, url, {title: "组织管理"}, 1);
                });
            },
            statusEnable:function (statusName) {
                var _self=this;
                this.mareSureSelectedTreeTableRow("启用").then(function (nodeData) {
                    var url = "/PlatForm/OrganRelevance/Organ/StatusChange.do";
                    var recordId = nodeData[appList.treeTableConfig.IdField];
                    //debugger;
                    AjaxUtility.Post(url, {ids: recordId,status:statusName}, function (result) {
                        if (result.success) {
                            DialogUtility.Alert(window, DialogUtility.DialogAlertId, {}, result.message, function () {
                                nodeData.organStatus=statusName;
                                _self.treeTableObject.UpdateToRow(nodeData[appList.treeTableConfig.IdField],nodeData);
                            });
                        }
                        else {
                            DialogUtility.Alert(window, DialogUtility.DialogAlertId, {}, result.message,null);
                        }
                    }, "json");
                });
            },
            move:function(type){
                var _self=this;
                this.mareSureSelectedTreeTableRow("选中").then(function (nodeData) {
                    var url = '/PlatForm/OrganRelevance/Organ/Move.do';
                    var recordId = nodeData[appList.treeTableConfig.IdField];
                    AjaxUtility.Post(url, {recordId: recordId,type:type}, function (result) {
                        if (result.success) {
                            DialogUtility.Alert(window, DialogUtility.DialogAlertId, {}, result.message, function () {
                                if(type=="down") {
                                    _self.treeTableObject.MoveDownRow(nodeData[appList.treeTableConfig.IdField]);
                                }else{
                                    _self.treeTableObject.MoveUpRow(nodeData[appList.treeTableConfig.IdField]);
                                }
                            });
                        }
                        else {
                            DialogUtility.Alert(window, DialogUtility.DialogAlertId, {}, result.message,null);
                        }
                    }, "json");
                });
            },
            newTreeTableNode : function (newData) {
                this.treeTableObject.AppendChildRowToCurrentSelectedRow(newData);
            },
            updateTreeTableNode : function (newData) {
                this.treeTableObject.UpdateToRow(newData[appList.treeTableConfig.IdField],newData);
            }
        }
    });
</script>
</body>
</html>