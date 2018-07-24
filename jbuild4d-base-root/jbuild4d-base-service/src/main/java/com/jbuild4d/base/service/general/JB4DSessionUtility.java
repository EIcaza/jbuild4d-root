package com.jbuild4d.base.service.general;

import com.jbuild4d.base.service.exception.SessionTimeoutException;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

public class JB4DSessionUtility {


    public static String UserLoginSessionKey="JB4DSession";
    public static String EXSessionKey1="EXSessionKey1";

    /**
     * 返回必须通过request请求调用
     * @return
     * @throws SessionTimeoutException session超时时抛出
     */
    public static JB4DSession getSession() throws SessionTimeoutException {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        if(request == null) {
            throw new SessionTimeoutException();
        }
        JB4DSession b4DSession = (JB4DSession)request.getSession().getAttribute(UserLoginSessionKey);
        if(b4DSession == null) {
            throw new SessionTimeoutException();
        }
        return b4DSession;
    }

    public static void addSessionAttr(String key,Object value){
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        if(request == null) {
            throw new SessionTimeoutException();
        }
        request.getSession().setAttribute(key,value);
    }

    public static Object getSessionAttr(String key){
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        if(request == null) {
            throw new SessionTimeoutException();
        }
        return request.getSession().getAttribute(key);
    }

    public static boolean containKey(String key){
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        if(request == null) {
            throw new SessionTimeoutException();
        }
        Object tempObj=request.getSession().getAttribute(key);
        if(tempObj==null){
            return false;
        }
        return true;
    }

    public static void clearMySession() {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        request.getSession().removeAttribute(UserLoginSessionKey);
    }
}
