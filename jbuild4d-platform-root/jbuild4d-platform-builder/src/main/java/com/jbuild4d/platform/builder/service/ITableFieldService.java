package com.jbuild4d.platform.builder.service;

import com.jbuild4d.base.dbaccess.dbentities.TableFieldEntity;
import com.jbuild4d.base.service.IBaseService;
import com.jbuild4d.base.service.general.JB4DSession;
import com.jbuild4d.platform.builder.vo.TableFieldVO;

import java.io.IOException;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhuangrb
 * Date: 2018/7/30
 * To change this template use File | Settings | File Templates.
 */
public interface ITableFieldService extends IBaseService<TableFieldEntity> {
    List<String> getFieldTemplateName();

    List<TableFieldVO> getTemplateFieldsByName(String templateName) throws IOException;

    void createGeneralTemplate(JB4DSession jb4DSession);

    List<TableFieldVO> getTableFieldsByTableId(String tableId) throws IOException;

    List<TableFieldVO> getTableFieldsByTableName(String rtTableName) throws IOException;
}