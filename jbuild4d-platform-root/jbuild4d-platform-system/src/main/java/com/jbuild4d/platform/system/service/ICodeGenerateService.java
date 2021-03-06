package com.jbuild4d.platform.system.service;

import com.github.pagehelper.PageInfo;
import com.jbuild4d.base.service.general.JB4DSession;
import com.jbuild4d.platform.system.vo.SimpleTableFieldVo;
import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPathExpressionException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Map; /**
 * Created with IntelliJ IDEA.
 * User: zhuangrb
 * Date: 2018/7/25
 * To change this template use File | Settings | File Templates.
 */
public interface ICodeGenerateService {
    PageInfo<List<Map<String, Object>>> getTables(JB4DSession jb4DSession, Integer pageNum, Integer pageSize, Map<String, Object> searchMap);

    List<SimpleTableFieldVo> getTableFields(JB4DSession jb4DSession, String tableName);

    Map<String,String> getTableGenerateCode(JB4DSession jb4DSession, String tableName,String orderFieldName,String statusFieldName, String packageType) throws IOException, ParserConfigurationException, SAXException, XPathExpressionException;
}
