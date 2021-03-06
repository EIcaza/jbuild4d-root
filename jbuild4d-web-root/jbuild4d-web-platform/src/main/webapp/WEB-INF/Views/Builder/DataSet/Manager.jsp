<%--
  Created by IntelliJ IDEA.
  User: zhuangrb
  Date: 2018/8/7
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
    <div id="appList" class="list-2column">
        <div class="left-outer-wrap-c">
            <div class="left-page-c">
                <div class="tool-bar-c">
                    <div alt="新增分类组" title="新增分类组" class="add" @click="addGroup()"></div>
                    <div alt="修改分类组" title="修改分类组" class="edit" @click="editGroup"></div>
                    <div alt="删除分类组" title="删除分类组" class="del" @click="delGroup"></div>
                    <div alt="浏览分类组" title="浏览分类组" class="view" @click="viewGroup"></div>
                    <div alt="上移" title="上移" class="order-up" @click="moveGroup('up')"></div>
                    <div alt="下移" title="下移" class="order-down last" @click="moveGroup('down')"></div>
                </div>
                <div>
                    <ul id="ztreeUL" class="ztree"></ul>
                </div>
            </div>
        </div>
        <div class="right-outer-wrap-c" style="padding: 10px">
            <div class="list-simple-search-wrap" id="list-simple-search-wrap">
                <table class="ls-table">
                    <colgroup>
                        <col style="width: 80px">
                        <col style="">
                        <col style="width: 80px">
                        <col style="">
                        <col style="width: 80px">
                    </colgroup>
                    <tr class="ls-table-row">
                        <td>标题：</td>
                        <td>
                            <i-input v-model="searchCondition.tableCaption.value" placeholder=""></i-input>
                        </td>
                        <td>表名：</td>
                        <td>
                            <i-input v-model="searchCondition.tableName.value" placeholder=""></i-input>
                        </td>
                        <td><i-button type="primary" @click="search"><Icon type="android-search"></Icon> 查询 </i-button></td>
                    </tr>
                </table>
            </div>
            <div id="list-button-wrap" class="list-button-outer-wrap">
                <div class="list-button-inner-wrap">
                    <i-button type="success" @click="add()"><Icon type="plus"></Icon> 新增 </i-button>
                    <i-button type="primary" @click="move('up')"><Icon type="arrow-up-b"></Icon> 上移 </i-button>
                    <i-button type="primary" @click="move('down')"><Icon type="arrow-down-b"></Icon> 下移 </i-button>
                    <i-button type="primary" v-if="listButton.showExportDocument" @click="exportDBDocument()"><Icon type="arrow-down-b"></Icon> 导出表结构文档 </i-button>
                </div>
                <div style="clear: both"></div>
            </div>
            <i-table :height="listHeight" stripe border :columns="columnsConfig" :data="tableData"
                     class="iv-list-table" :highlight-row="true"
                     @on-selection-change="selectionChange"></i-table>
            <div style="float: right;" id="list-pager-wrap">
                <page @on-change="changePage" :current.sync="pageNum" :page-size="pageSize" show-total
                      :total="pageTotal"></page>
            </div>
        </div>
    </div>
    <script>
        var appList=new Vue({
            el:"#appList",
            mounted:function () {
                this.initTree();
                window.setTimeout(function () {
                    appList.listHeight=ListPageUtility.GetGeneralPageHeight(-20);
                },500);
            },
            data:{
                <!--Tree-->
                treeIdFieldName:"dsGroupId",
                treeObj:null,
                treeSelectedNode:null,
                treeSetting:{
                    async : {
                        enable : true,
                        // Ajax 获取数据的 URL 地址
                        url : BaseUtility.BuildUrl("/PlatForm/Builder/DataSet/DataSetGroup/GetTreeData.do")
                    },
                    // 必须使用data
                    data:{
                        key:{
                            name:"dsGroupText"
                        },
                        simpleData : {
                            enable : true,
                            idKey : "dsGroupId", // id编号命名
                            pIdKey : "dsGroupParentId",  // 父id编号命名
                            rootId : 0
                        }
                    },
                    // 回调函数
                    callback : {
                        onClick : function(event, treeId, treeNode) {
                            appList.treeNodeSelected(event,treeId,treeNode);
                        },
                        //成功的回调函数
                        onAsyncSuccess : function(event, treeId, treeNode, msg){
                            appList.treeObj.expandAll(true);
                        }
                    }
                },
                <!--List-->
                idFieldName:"tableId",
                searchCondition:{
                    tableGroupId:{
                        value:"",
                        type:SearchUtility.SearchFieldType.StringType
                    },
                    tableCaption:{
                        value:"",
                        type:SearchUtility.SearchFieldType.LikeStringType
                    },
                    tableName:{
                        value:"",
                        type:SearchUtility.SearchFieldType.LikeStringType
                    }
                },
                columnsConfig: [
                    {
                        type: 'selection',
                        width: 60,
                        align: 'center'
                    },
                    {
                        title: '标题',
                        key: 'tableCaption',
                        align: "center"
                    }, {
                        title: '名称',
                        key: 'tableName',
                        align: "center"
                    }, {
                        title: '备注',
                        key: 'tableDesc'
                    }, {
                        title: '更新时间',
                        key: 'tableUpdateTime',
                        width: 100,
                        align: "center",
                        render: function (h, params) {
                            return ListPageUtility.IViewTableRenderer.ToDateYYYY_MM_DD(h, params.row.tableUpdateTime);
                        }
                    }, {
                        title: '操作',
                        key: 'tableId',
                        width: 120,
                        align: "center",
                        render: function (h, params) {
                            return h('div',{class: "list-row-button-wrap"},[
                                ListPageUtility.IViewTableInnerButton.ViewButton(h,params,appList.idFieldName,appList),
                                ListPageUtility.IViewTableInnerButton.EditButton(h,params,appList.idFieldName,appList),
                                ListPageUtility.IViewTableInnerButton.DeleteButton(h,params,appList.idFieldName,appList)
                            ]);
                        }
                    }
                ],
                tableData: [],
                selectionRows: null,
                pageTotal: 0,
                pageSize: 12,
                pageNum: 1,
                listHeight: 300,
                listButton:{
                    showExportDocument:false
                }
            },
            methods:{
                <!--Tree-->
                initTree:function () {
                    this.treeObj=$.fn.zTree.init($("#ztreeUL"), this.treeSetting);
                },
                treeNodeSelected:function (event, treeId, treeNode) {
                    // 根节点不触发任何事件
                    //if(treeNode.level != 0) {
                    this.treeSelectedNode=treeNode;
                    this.selectionRows=null;
                    this.pageNum=1;
                    this.clearSearchCondition();
                    this.searchCondition.tableGroupId.value=this.treeSelectedNode[this.treeIdFieldName];
                    this.listButton.showExportDocument=false;
                    if(treeNode.tableGroupId==0){
                        this.searchCondition.tableGroupId.value="";
                        this.listButton.showExportDocument=true;
                    }
                    this.reloadData();
                    //appList.reloadTreeTableData();
                    //}
                },
                addGroup:function () {
                    if(this.treeSelectedNode!=null) {
                        var url = BaseUtility.BuildUrl("/PlatForm/Builder/DataSet/DataSetGroup/Detail.do?op=add&parentId="+this.treeSelectedNode[appList.treeIdFieldName]);
                        DialogUtility.Frame_OpenIframeWindow(window, DialogUtility.DialogId, url, {title: "数据集分组"}, 2);
                    }
                    else {
                        DialogUtility.Alert(window,DialogUtility.DialogAlertId,{},"请选择父节点!",null);
                    }
                },
                editGroup:function () {
                    if(this.treeSelectedNode!=null) {
                        var url = BaseUtility.BuildUrl("/PlatForm/Builder/DataSet/DataSetGroup/Detail.do?op=update&recordId="+this.treeSelectedNode[appList.treeIdFieldName]);
                        DialogUtility.Frame_OpenIframeWindow(window, DialogUtility.DialogId, url, {title: "数据集分组"}, 2);
                    }
                    else {
                        DialogUtility.Alert(window,DialogUtility.DialogAlertId,{},"请选择需要编辑的节点!",null);
                    }
                },
                viewGroup:function () {
                    var url = BaseUtility.BuildUrl("/PlatForm/Builder/DataSet/DataSetGroup/Detail.do?op=view&recordId=" + this.treeSelectedNode[appList.treeIdFieldName]);
                    DialogUtility.Frame_OpenIframeWindow(window, DialogUtility.DialogId, url, {title: "数据集分组"}, 2);
                },
                delGroup:function () {
                    var url="/PlatForm/Builder/DataSet/DataSetGroup/Delete.do";
                    var recordId=this.treeSelectedNode[appList.treeIdFieldName];
                    DialogUtility.Comfirm(window, "确认要删除选定的节点吗？", function () {
                        AjaxUtility.Post(url, {recordId: recordId}, function (result) {
                            if (result.success) {
                                DialogUtility.Alert(window, DialogUtility.DialogAlertId, {}, result.message, function () {
                                    appList.treeObj.removeNode(appList.treeSelectedNode);
                                    appList.treeSelectedNode=null;
                                });
                            }
                            else {
                                DialogUtility.Alert(window, DialogUtility.DialogAlertId, {}, result.message, function () {});
                            }
                        }, "json");
                    });
                },
                moveGroup:function (type) {
                    if(this.treeSelectedNode!=null) {
                        var url = '/PlatForm/Builder/DataSet/DataSetGroup/Move.do';
                        var recordId = this.treeSelectedNode[appList.treeIdFieldName];
                        AjaxUtility.Post(url, {recordId: recordId,type:type}, function (result) {
                            if (result.success) {
                                DialogUtility.Alert(window, DialogUtility.DialogAlertId, {}, result.message, function () {
                                    if(type=="down") {
                                        if(appList.treeSelectedNode.getNextNode()!=null) {
                                            appList.treeObj.moveNode(appList.treeSelectedNode.getNextNode(), appList.treeSelectedNode, "next", false)
                                        }
                                    }else{
                                        if(appList.treeSelectedNode.getPreNode()!=null) {
                                            appList.treeObj.moveNode(appList.treeSelectedNode.getPreNode(), appList.treeSelectedNode, "prev", false);
                                        }
                                    }
                                });
                            }
                            else {
                                DialogUtility.Alert(window, DialogUtility.DialogAlertId, {}, result.message,null);
                            }
                        }, "json");
                    }
                    else {
                        DialogUtility.Alert(window,DialogUtility.DialogAlertId,{},"请选择需要编辑的节点!",null);
                    }
                },
                newTreeNode : function (newNodeData) {
                    var silent = false;
                    appList.treeObj.addNodes(this.treeSelectedNode,newNodeData,silent);
                },
                updateNode : function (newNodeData) {
                    this.treeSelectedNode=$.extend(true,this.treeSelectedNode, newNodeData);
                    appList.treeObj.updateNode(this.treeSelectedNode);
                },
                <!--List-->
                clearSearchCondition:function () {
                    for(var key in this.searchCondition){
                        this.searchCondition[key].value="";
                    }
                },
                selectionChange: function (selection) {
                    this.selectionRows = selection;
                },
                reloadData: function () {
                    var url = '/PlatForm/Builder/DataStorage/DataBase/Table/GetListData.do';
                    ListPageUtility.IViewTableLoadDataSearch(url,this.pageNum,this.pageSize,this.searchCondition,this,this.idFieldName,true,null);
                    //this.selectionRows=null;
                },
                add: function () {
                    if(this.treeSelectedNode!=null) {
                        var url = BaseUtility.BuildUrl("/PlatForm/Builder/DataSet/DataSetDesign/EditDataSet.do?op=add&groupId=" + this.treeSelectedNode[appList.treeIdFieldName]);
                        DialogUtility.Frame_OpenIframeWindow(window, DialogUtility.DialogId, url, {title: "数据集设计"}, 0);
                    }
                    else {
                        DialogUtility.Alert(window,DialogUtility.DialogAlertId,{},"请选择分组!",null);
                    }
                },
                edit: function (recordId) {
                    var url = BaseUtility.BuildUrl("/PlatForm/Builder/DataStorage/DataBase/Table/EditTable.do?op=update&recordId=" + recordId);
                    DialogUtility.Frame_OpenIframeWindow(window, DialogUtility.DialogId, url, {title: "表设计"}, 0);
                },
                view:function (recordId) {
                    var url = BaseUtility.BuildUrl("/PlatForm/Builder/DataStorage/DataBase/Table/EditTable.do?op=view&recordId=" + recordId);
                    DialogUtility.Frame_OpenIframeWindow(window, DialogUtility.DialogId, url, {title: "表设计"}, 0);
                },
                del: function (recordId) {
                    var url = '/PlatForm/Builder/DataStorage/DataBase/Table/Delete.do';
                    DialogUtility.Comfirm(window, "确认要删除当前表吗？删除表时将只是删除表的描述,物理表和字段描述将保存，如果需要删除，请手工删除。", function () {
                        AjaxUtility.Post(url, {recordId: recordId}, function (result) {
                            if (result.success) {
                                DialogUtility.Alert(window, DialogUtility.DialogAlertId, {}, result.message, function () {
                                    appList.reloadData();
                                });
                            }
                            else {
                                DialogUtility.Alert(window, DialogUtility.DialogAlertId, {}, result.message, function () {});
                            }
                        }, "json");
                    });
                },
                move:function (type) {
                    var url = '/PlatForm/Builder/DataStorage/DataBase/Table/Move.do';
                    ListPageUtility.IViewMoveFace(url,this.selectionRows,appList.idFieldName,type,appList);
                },
                changePage: function (pageNum) {
                    this.pageNum = pageNum;
                    this.reloadData();
                    this.selectionRows=null;
                },
                search:function () {
                    this.pageNum=1;
                    this.reloadData();
                },
                exportDBDocument:function () {
                    DialogUtility.Alert(window,DialogUtility.DialogAlertId,{},"未实现！",null);
                }
            }
        });
    </script>
</body>
</html>
