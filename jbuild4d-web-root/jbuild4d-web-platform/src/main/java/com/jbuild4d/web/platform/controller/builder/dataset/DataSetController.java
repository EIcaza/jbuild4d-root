package com.jbuild4d.web.platform.controller.builder.dataset;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.github.pagehelper.PageInfo;
import com.jbuild4d.base.dbaccess.dbentities.TableEntity;
import com.jbuild4d.base.dbaccess.dbentities.TableGroupEntity;
import com.jbuild4d.base.service.general.JB4DSession;
import com.jbuild4d.base.service.general.JB4DSessionUtility;
import com.jbuild4d.base.tools.common.JsonUtility;
import com.jbuild4d.base.tools.common.search.GeneralSearchUtility;
import com.jbuild4d.platform.builder.service.ITableFieldService;
import com.jbuild4d.platform.builder.service.ITableGroupService;
import com.jbuild4d.platform.builder.service.ITableService;
import com.jbuild4d.platform.builder.vo.TableFieldVO;
import com.jbuild4d.platform.system.service.IEnvVariableService;
import com.jbuild4d.platform.system.vo.EnvVariableVo;
import com.jbuild4d.web.platform.model.JBuild4DResponseVo;
import com.jbuild4d.web.platform.model.ZTreeNodeVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.xml.xpath.XPathExpressionException;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: zhuangrb
 * Date: 2018/8/7
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping(value = "/PlatForm/Builder/DataSet/DataSetDesign")
public class DataSetController {

    @Autowired
    IEnvVariableService envVariableService;

    @Autowired
    ITableGroupService tableGroupService;

    @Autowired
    ITableService tableService;

    @Autowired
    ITableFieldService tableFieldService;

    @RequestMapping(value = "EditDataSet", method = RequestMethod.GET)
    public ModelAndView editDataSet(String recordId, String op, String groupId) throws JsonProcessingException {
        ModelAndView modelAndView=new ModelAndView("Builder/DataSet/DataSetEdit");
        JB4DSessionUtility.setUserInfoToMV(modelAndView);
        modelAndView.addObject("op",op);
        return modelAndView;
    }

    @RequestMapping(value = "GetTableField", method = RequestMethod.POST)
    @ResponseBody
    public JBuild4DResponseVo getTableField(String tableId) {
        try {
            JB4DSession jb4DSession = JB4DSessionUtility.getSession();
            List<TableFieldVO> tableFieldVOList=tableFieldService.getTableFieldsByTableId(tableId);
            return JBuild4DResponseVo.success("获取成功", tableFieldVOList);
        }
        catch (Exception ex){
            return JBuild4DResponseVo.error(ex.getMessage());
        }
    }
}
