package com.jbuild4d.web.platform.controller.devdemo.treeandlist;

import com.jbuild4d.base.dbaccess.dbentities.DevDemoTLTreeListEntity;
import com.jbuild4d.base.service.IBaseService;
import com.jbuild4d.web.platform.controller.base.GeneralCRUDImplController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * User: zhuangrb
 * Date: 2018/7/24
 * To change this template use File | Settings | File Templates.
 */

@Controller
@RequestMapping(value = "/PlatForm/DevDemo/TreeAndList/DevDemoTLList")
public class DevDemoTLTreeListController   extends GeneralCRUDImplController<DevDemoTLTreeListEntity> {

    @Override
    protected IBaseService<DevDemoTLTreeListEntity> getBaseService() {
        return null;
    }

    @Override
    public String getListViewName() {
        return null;
    }

    @Override
    public String getDetailViewName() {
        return null;
    }
}