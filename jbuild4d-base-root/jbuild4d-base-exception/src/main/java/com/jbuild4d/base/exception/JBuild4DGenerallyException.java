package com.jbuild4d.base.exception;

public class JBuild4DGenerallyException extends JBuild4DBaseException {

    static int defaultCode=0;

    public JBuild4DGenerallyException(String message) {
        super(defaultCode, message);
    }

    public JBuild4DGenerallyException(int errorCode, String message) {
        super(errorCode, message);
    }

    public JBuild4DGenerallyException(int errorCode, String message, Throwable cause) {
        super(errorCode, message, cause);
    }

    public static JBuild4DGenerallyException getSystemRecordDelException(){
        return new JBuild4DGenerallyException("系统数据不能删除!");
    }

    public static JBuild4DGenerallyException getDBFieldSettingDelException(){
        return new JBuild4DGenerallyException("该记录已被设置为无法删除!");
    }

    public static JBuild4DGenerallyException getHadChildDelException(){
        return new JBuild4DGenerallyException("存在子记录,请先删除子记录!");
    }
}
