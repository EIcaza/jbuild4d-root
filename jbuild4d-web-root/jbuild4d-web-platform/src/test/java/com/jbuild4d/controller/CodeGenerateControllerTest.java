package com.jbuild4d.controller;

import com.jbuild4d.base.service.general.JB4DSession;
import com.jbuild4d.base.tools.common.JsonUtility;
import com.jbuild4d.web.platform.beanconfig.sys.RootConfig;
import com.jbuild4d.web.platform.beanconfig.sys.WebConfig;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.ContextHierarchy;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.web.context.WebApplicationContext;

import java.util.Map;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.webAppContextSetup;

/**
 * Created with IntelliJ IDEA.
 * User: zhuangrb
 * Date: 2018/7/26
 * To change this template use File | Settings | File Templates.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration(value = "src/main/webapp")
@ContextHierarchy({
        @ContextConfiguration(name = "parent", classes = RootConfig.class),
        @ContextConfiguration(name = "child", classes = WebConfig.class)})
public class CodeGenerateControllerTest {
    MockMvc mockMvc;

    @Autowired
    private WebApplicationContext context;

    @Before
    public void setupMock() throws Exception {
        mockMvc = webAppContextSetup(context).build();
        MockHttpServletRequestBuilder requestBuilder =post("/ValidateAccount.do");
        requestBuilder.param("account","1");
        requestBuilder.param("password","1");
        mockMvc.perform(requestBuilder);
    }

    @Test
    public void demo() throws Exception {
        //context.getServletContext().
        MockHttpServletRequestBuilder requestBuilder =post("/PlatForm/System/CodeGenerate/GetTableGenerateCode.do");
        requestBuilder.param("tableName","TB4D_SETTING");
        requestBuilder.param("packageType","JBuild4D-PlatForm");

        JB4DSession b4DSession = new JB4DSession();
        b4DSession.setOrganName("4D");
        b4DSession.setOrganId("OrganId");
        b4DSession.setUserName("Alex");
        b4DSession.setUserId("UserId");
        requestBuilder.sessionAttr("JB4DSession",b4DSession);
        MvcResult result=mockMvc.perform(requestBuilder).andReturn();
        String json=result.getResponse().getContentAsString();
        //JBuild4DResponseVo jBuild4DResponseVo= JsonUtility.toObject(json,JBuild4DResponseVo<Map<String,String>>.class);
        Map<String,Object> resultMap=JsonUtility.toObject(json,Map.class);
        System.out.println(((Map)resultMap.get("data")).get("DaoContent"));
    }
}
