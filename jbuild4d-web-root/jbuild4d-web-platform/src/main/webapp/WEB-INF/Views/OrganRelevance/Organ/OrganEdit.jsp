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
    <%@ include file="/WEB-INF/Views/TagLibs/ThemesLib.jsp" %>
</head>
<body>
<div id="appForm" class="general-edit-page-wrap" v-cloak>
    <i-form ref="formValidate" :model="formValidate" :rules="ruleValidate" :label-width="100">
        <form-item label="组织名称：" prop="organName">
            <i-input v-model="formValidate.organName"></i-input>
        </form-item>
        <form-item label="组织简称：" prop="organShortName">
            <i-input v-model="formValidate.organShortName"></i-input>
        </form-item>
        <form-item label="组织编号：">
            <row>
                <i-col span="10">
                    <form-item>
                        <i-input v-model="formValidate.organNo"></i-input>
                    </form-item>
                </i-col>
                <i-col span="4" style="text-align: center">组织机构代码：</i-col>
                <i-col span="10">
                    <form-item>
                        <i-input v-model="formValidate.organCode"></i-input>
                    </form-item>
                </i-col>
            </row>
        </form-item>
        <form-item label="创建时间：">
            <row>
                <i-col span="10">
                    <form-item prop="">
                        <date-picker type="date" placeholder="" v-model="formValidate.organCreateTime"></date-picker>
                    </form-item>
                </i-col>
                <i-col span="4" style="text-align: center">状态：</i-col>
                <i-col span="10">
                    <form-item>
                        <radio-group v-model="formValidate.organStatus">
                            <radio label="启用">启用</radio>
                            <radio label="禁用">禁用</radio>
                        </radio-group>
                    </form-item>
                </i-col>
            </row>
        </form-item>
        <form-item label="联系电话：">
            <row>
                <i-col span="10">
                    <form-item>
                        <i-input v-model="formValidate.organPhone"></i-input>
                    </form-item>
                </i-col>
                <i-col span="4" style="text-align: center">邮政编码：</i-col>
                <i-col span="10">
                    <form-item>
                        <i-input v-model="formValidate.organPost"></i-input>
                    </form-item>
                </i-col>
            </row>
        </form-item>
        <form-item label="地址：">
            <i-input v-model="formValidate.organAddress"></i-input>
        </form-item>
        <form-item label="联系人：">
            <row>
                <i-col span="10">
                    <form-item>
                        <i-input v-model="formValidate.organContactor"></i-input>
                    </form-item>
                </i-col>
                <i-col span="4" style="text-align: center">联系人手机：</i-col>
                <i-col span="10">
                    <form-item>
                        <i-input v-model="formValidate.organContactorMobile"></i-input>
                    </form-item>
                </i-col>
            </row>
        </form-item>
        <form-item label="域名：">
            <row>
                <i-col span="10">
                    <form-item>
                        <i-input v-model="formValidate.organDomain"></i-input>
                    </form-item>
                </i-col>
                <i-col span="4" style="text-align: center">传真：</i-col>
                <i-col span="10">
                    <form-item>
                        <i-input v-model="formValidate.organFax"></i-input>
                    </form-item>
                </i-col>
            </row>
        </form-item>
        <form-item label="是否虚拟：">
            <row>
                <i-col span="10">
                    <form-item>
                        <radio-group v-model="formValidate.organIsVirtual">
                            <radio label="是">是</radio>
                            <radio label="否">否</radio>
                        </radio-group>
                    </form-item>
                </i-col>
                <i-col span="4" style="text-align: center">组织类型：</i-col>
                <i-col span="10">
                    <form-item>
                        <radio-group v-model="formValidate.organTypeValue" style="width: 100%">
                            <radio v-for="item in exObjectsJson.OrganType" :label="item.organTypeValue">{{item.organTypeName}}</radio>
                        </radio-group>
                    </form-item>
                </i-col>
            </row>
        </form-item>
        <form-item class="general-edit-page-bottom-wrap">
            <i-button type="primary" v-if="status!='view'" @click="handleSubmit('formValidate')"> 保  存 </i-button>
            <i-button type="ghost" v-if="status!='view'" @click="handleReset('formValidate')" style="margin-left: 8px"> 关  闭 </i-button>
        </form-item>
    </i-form>
</div>
<script>
    var appForm = new Vue({
        el:"#appForm",
        data: {
            exObjectsJson:${exObjectsJson},
            formValidate: {
                organId: '${recordId}',
                organParentId:'${entity.organParentId}' == '' ? StringUtility.QueryString("parentId") : '${entity.organParentId}',
                organName: '${entity.organName}',
                organNo: '${entity.organNo}',
                organCode: '${entity.organCode}',
                organPhone: '${entity.organPhone}',
                organPost: '${entity.organPost}',
                organAddress: '${entity.organAddress}',
                organContactor: '${entity.organContactor}',
                organContactorMobile: '${entity.organContactorMobile}',
                organDomain: '${entity.organDomain}',
                organFax: '${entity.organFax}',
                organIsVirtual: '${entity.organIsVirtual}' == '' ? '否' : '${entity.organIsVirtual}',
                organShortName: '${entity.organShortName}',
                organStatus: '${entity.organStatus}'==''?'启用':'${entity.organStatus}',
                organCreateTime:'<fmt:formatDate value="${entity.organCreateTime}" pattern="yyyy-MM-dd" />'==''?DateUtility.GetCurrentDataString("-"): '<fmt:formatDate value="${entity.organCreateTime}" pattern="yyyy-MM-dd" />',
                organTypeValue:'${entity.organTypeValue}'
            },
            ruleValidate: {
                organName: [
                    { required: true, message: '【组织名称】不能空！', trigger: 'blur' }
                ],
                organShortName: [
                    { required: true, message: '【组织简称】不能空！', trigger: 'blur' }
                ]
            },
            status:'${op}'
        },
        mounted:function () {
            if(this.status=="view") {
                DetailPageUtility.IViewPageToViewStatus();
            }
            if(this.status=="add"){
                this.formValidate.organTypeValue=this.exObjectsJson.OrganType[0].organTypeValue;
            }
        },
        methods: {
            handleSubmit: function (name) {
                var _self=this;
                this.$refs[name].validate(function (valid) {
                    if (valid) {
                        var sendData=JSON.stringify(_self.formValidate);
                        //debugger;
                        var url='/PlatForm/OrganRelevance/Organ/SaveEdit.do';
                        AjaxUtility.PostRequestBody(url,sendData,function (result) {
                            DialogUtility.Alert(window,DialogUtility.DialogAlertId,{},result.message,function () {
                                if(result.success) {
                                    if (appForm.status == "add") {
                                        window.OpenerWindowObj.appList.newTreeTableNode(_self.formValidate);
                                    }
                                    else if (appForm.status == "update") {
                                        window.OpenerWindowObj.appList.updateTreeTableNode(_self.formValidate);
                                    }
                                }
                                DialogUtility.Frame_CloseDialog(window);
                            });
                        },"json");
                    } else {
                        this.$Message.error('Fail!');
                    }
                })
            },
            handleReset: function (name) {
                this.$refs[name].resetFields();
            }
        }
    });
</script>
</body>
</html>