package com.jbuild4d.web;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.jbuild4d.base.dbaccess.dbentities.MenuEntity;
import com.jbuild4d.base.exception.JBuild4DGenerallyException;
import com.jbuild4d.base.service.general.JB4DSession;
import com.jbuild4d.base.service.general.JB4DSessionUtility;
import com.jbuild4d.base.tools.common.JsonUtility;
import com.jbuild4d.platform.system.service.IMenuService;
import com.jbuild4d.platform.system.service.IOperationLogService;
import com.jbuild4d.web.platform.model.JBuild4DResponseVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;

@Controller
public class LoginController {

    @Autowired
    IMenuService menuService;

    @Autowired
    IOperationLogService operationLogService;

    @RequestMapping(value = "/Login", method = RequestMethod.GET)
    public ModelAndView login(HttpServletRequest request) {

        System.out.println("Home Controller Call");
        ModelAndView modelAndView=new ModelAndView("Login");

        request.getSession().setAttribute("theme",request.getContextPath()+"/Themes/Default");
        return modelAndView;
    }

    @RequestMapping(value = "/LoginOut", method = RequestMethod.GET)
    public ModelAndView loginOut(HttpServletRequest request) throws JsonProcessingException, JBuild4DGenerallyException {
        ModelAndView modelAndView=new ModelAndView("Login");
        operationLogService.writeUserExitLog(JB4DSessionUtility.getSession(),this.getClass(),request);
        JB4DSessionUtility.clearMySession();
        return modelAndView;
    }

    @RequestMapping(value = "/RedirectLogin", method = RequestMethod.GET)
    public ModelAndView RedirectLogin(HttpServletRequest request) {

        ModelAndView modelAndView=new ModelAndView("SessionTimeout");
        request.getSession().setAttribute("theme",request.getContextPath()+"/Themes/Default");
        return modelAndView;
    }

    @RequestMapping(value = "/ValidateAccount", method = RequestMethod.POST)
    @ResponseBody
    public JBuild4DResponseVo validateAccount(String account, String password,HttpServletRequest request) throws IOException, ParseException, JBuild4DGenerallyException {
        JB4DSession b4DSession = new JB4DSession();
        b4DSession.setOrganName("4D");
        b4DSession.setOrganId("OrganId");
        b4DSession.setUserName("Alex");
        b4DSession.setUserId("UserId");
        JB4DSessionUtility.addSessionAttr(JB4DSessionUtility.UserLoginSessionKey, b4DSession);
        request.getSession().setAttribute("theme",request.getContextPath()+"/Themes/Default");
        JB4DSession jb4DSession=JB4DSessionUtility.getSession();
        List<MenuEntity> entityList=menuService.getALL(jb4DSession);
        System.out.println(JsonUtility.toObjectString(entityList));
        operationLogService.writeUserLoginLog(jb4DSession,this.getClass(),request);
        return JBuild4DResponseVo.opSuccess();
    }
}
