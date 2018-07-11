package com.jbuild4d.web.platform.beanconfig.service;

import com.jbuild4d.base.dbaccess.dao.*;
import com.jbuild4d.base.dbaccess.dynamic.GeneralMapper;
import com.jbuild4d.base.service.IGeneralService;
import com.jbuild4d.base.service.ISQLBuilderService;
import com.jbuild4d.base.service.impl.GeneralServiceImpl;
import com.jbuild4d.base.service.impl.SQLBuilderServiceImpl;
import com.jbuild4d.platform.system.service.IDictionaryGroupService;
import com.jbuild4d.platform.system.service.IDictionaryService;
import com.jbuild4d.platform.system.service.IMenuService;
import com.jbuild4d.platform.system.service.ISettingService;
import com.jbuild4d.platform.system.service.impl.DictionaryGroupServiceImplImpl;
import com.jbuild4d.platform.system.service.impl.DictionaryServiceImplImpl;
import com.jbuild4d.platform.system.service.impl.MenuServiceImplImpl;
import com.jbuild4d.platform.system.service.impl.SettingServiceImplImpl;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
public class SystemBeansConfig {

    @Bean
    public IGeneralService generalService(GeneralMapper mapper, SqlSessionTemplate sqlSessionTemplate) {
        IGeneralService bean=new GeneralServiceImpl(mapper,sqlSessionTemplate);
        return bean;
    }

    @Bean
    public ISQLBuilderService sqlBuilderService(SqlSessionTemplate sqlSessionTemplate) {
        ISQLBuilderService bean=new SQLBuilderServiceImpl();
        return bean;
    }

    @Bean
    public IMenuService menuService(ISQLBuilderService _sqlBuilderService,MenuMapper mapper, SqlSessionTemplate sqlSessionTemplate) {
        IMenuService bean=new MenuServiceImplImpl(mapper,sqlSessionTemplate,_sqlBuilderService);
        return bean;
    }

    @Bean
    public IDictionaryGroupService dictionaryGroupService(ISQLBuilderService _sqlBuilderService, DictionaryGroupMapper mapper, SqlSessionTemplate sqlSessionTemplate) {
        IDictionaryGroupService bean=new DictionaryGroupServiceImplImpl(mapper,sqlSessionTemplate,_sqlBuilderService);
        return bean;
    }

    @Bean
    public IDictionaryService dictionaryService(ISQLBuilderService _sqlBuilderService, DictionaryMapper mapper, SqlSessionTemplate sqlSessionTemplate) {
        IDictionaryService bean=new DictionaryServiceImplImpl(mapper,sqlSessionTemplate,_sqlBuilderService);
        return bean;
    }

    @Bean
    public ISettingService settingService(ISQLBuilderService _sqlBuilderService, SettingMapper mapper, SqlSessionTemplate sqlSessionTemplate) {
        ISettingService bean=new SettingServiceImplImpl(mapper,sqlSessionTemplate,_sqlBuilderService);
        return bean;
    }
}
