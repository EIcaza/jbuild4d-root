package com.jbuild4d.web.platform.beanconfig.service;

import com.jbuild4d.base.dbaccess.dao.*;
import com.jbuild4d.base.service.ISQLBuilderService;
import com.jbuild4d.base.exception.JBuild4DGenerallyException;
import com.jbuild4d.platform.builder.service.*;
import com.jbuild4d.platform.builder.service.impl.*;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * User: zhuangrb
 * Date: 2018/7/30
 * To change this template use File | Settings | File Templates.
 */
@Configuration
@EnableTransactionManagement
public class BuildBeansConfig {

    @Bean
    public IDatabaseServiceLinkService databaseServiceLinkService(ISQLBuilderService _sqlBuilderService, DatabaseServiceLinkMapper mapper, SqlSessionTemplate sqlSessionTemplate) {
        IDatabaseServiceLinkService bean=new DatabaseServiceLinkServiceImpl(mapper,sqlSessionTemplate,_sqlBuilderService);
        return bean;
    }

    @Bean
    public ITableGroupService tableGroupService(ISQLBuilderService _sqlBuilderService, TableGroupMapper mapper, SqlSessionTemplate sqlSessionTemplate) {
        ITableGroupService bean=new TableGroupServiceImpl(mapper,sqlSessionTemplate,_sqlBuilderService);
        return bean;
    }

    @Bean
    public ITableService tableService(ISQLBuilderService _sqlBuilderService, TableMapper mapper, SqlSessionTemplate sqlSessionTemplate, TableFieldMapper tableFieldMapper) throws JBuild4DGenerallyException {
        ITableService bean=new TableServiceImpl(mapper,tableFieldMapper,sqlSessionTemplate,_sqlBuilderService);
        return bean;
    }

    @Bean
    public ITableFieldService tableFieldService(ISQLBuilderService _sqlBuilderService, TableFieldMapper mapper, SqlSessionTemplate sqlSessionTemplate) {
        ITableFieldService bean=new TableFieldServiceImpl(mapper,sqlSessionTemplate,_sqlBuilderService);
        return bean;
    }

    @Bean
    public IDatasetGroupService datasetGroupService(ISQLBuilderService _sqlBuilderService, DatasetGroupMapper mapper, SqlSessionTemplate sqlSessionTemplate) {
        IDatasetGroupService bean=new DatasetGroupServiceImpl(mapper,sqlSessionTemplate,_sqlBuilderService);
        return bean;
    }

    @Bean
    public IDatasetService datasetService(ISQLBuilderService _sqlBuilderService, DatasetMapper mapper, SqlSessionTemplate sqlSessionTemplate) {
        IDatasetService bean=new DatasetServiceImpl(mapper,sqlSessionTemplate,_sqlBuilderService);
        return bean;
    }

    @Bean
    public IBuilderConfigService builderConfigService() throws IOException, SAXException, ParserConfigurationException {
        IBuilderConfigService builderConfigService=new BuilderConfigServiceImpl();
        return builderConfigService;
    }
}
