
-----------------------------------------初始化文件夹-----------------------------------------
INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (0, 'Root', 'Root', 'Root', 'Group', '1', '1', '', '', 1, '0', '-1', '-1*0', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (100000, '应用管理', '应用管理', '应用管理', 'GroupTopMenu', '1', '1', 'LeftMenu.do', '', 2, '0', '0', '-1*0*100000', 'frame-top-menu-data', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (100100, '存储管理', '存储管理', '存储管理', 'Group', '1', '1', '', '', 3, '0', '100000', '-1*0*100000*100100', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (100200, '数据集管理', '数据集管理', '数据集管理', 'Group', '1', '1', '', '', 4, '0', '100000', '-1*0*100000*100200', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (100300, '模块管理', '模块管理', '模块管理', 'Group', '1', '1', '', '', 4, '0', '100000', '-1*0*100000*100300', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (100400, '应用管理测试菜单1', '应用管理测试菜单1', '应用管理测试菜单1', 'Group', '1', '1', '', '', 5, '0', '100000', '-1*0*100000*100400', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (100500, '应用管理测试菜单2', '应用管理测试菜单2', '应用管理测试菜单2', 'Group', '1', '1', '', '', 6, '0', '100000', '-1*0*100000*100500', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (100510, '应用管理测试菜单2-1', '应用管理测试菜单2-1', '应用管理测试菜单2-1', 'Group', '1', '1', '', '', 600, '0', '100500', '-1*0*100000*100500*100510', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (100610, '应用管理测试菜单2-2', '应用管理测试菜单2-2', '应用管理测试菜单2-2', 'Group', '1', '1', '', '', 610, '0', '100500', '-1*0*100000*100500*100610', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (100611, '应用管理测试菜单2-2-1', '应用管理测试菜单2-2-1', '应用管理测试菜单2-2-1', 'Group', '1', '1', '', '', 611, '0', '100610', '-1*0*100000*100500*100610*100611', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (100612, '应用管理测试菜单2-2-2', '应用管理测试菜单2-2-2', '应用管理测试菜单2-2-2', 'Group', '1', '1', '', '', 612, '0', '100610', '-1*0*100000*100500*100610*100612', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (100613, '应用管理测试菜单2-2-3', '应用管理测试菜单2-2-3', '应用管理测试菜单2-2-3', 'Group', '1', '1', '', '', 613, '0', '100610', '-1*0*100000*100500*100610*100613', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (100620, '应用管理测试菜单2-3', '应用管理测试菜单2-3', '应用管理测试菜单2-3', 'Group', '1', '1', '', '', 620, '0', '100500', '-1*0*100000*100500*100620', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (100600, '应用管理测试菜单3', '应用管理测试菜单3', '应用管理测试菜单3', 'Group', '1', '1', '', '', 7, '0', '100000', '-1*0*100000*100600', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (100700, '应用管理测试菜单4', '应用管理测试菜单4', '应用管理测试菜单4', 'Group', '1', '1', '', '', 8, '0', '100000', '-1*0*100000*100700', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (100800, '应用管理测试菜单5', '应用管理测试菜单5', '应用管理测试菜单5', 'Group', '1', '1', '', '', 9, '0', '100000', '-1*0*100000*100800', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (100900, '应用管理测试菜单6', '应用管理测试菜单6', '应用管理测试菜单6', 'Group', '1', '1', '', '', 9, '0', '100000', '-1*0*100000*100900', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (101000, '应用管理测试菜单7', '应用管理测试菜单7', '应用管理测试菜单7', 'Group', '1', '1', '', '', 10, '0', '100000', '-1*0*100000*101000', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (101100, '应用管理测试菜单8', '应用管理测试菜单8', '应用管理测试菜单8', 'Group', '1', '1', '', '', 11, '0', '100000', '-1*0*100000*101100', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (101200, '应用管理测试菜单9', '应用管理测试菜单9', '应用管理测试菜单9', 'Group', '1', '1', '', '', 12, '0', '100000', '-1*0*100000*101200', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (101300, '应用管理测试菜单10', '应用管理测试菜单10', '应用管理测试菜单10', 'Group', '1', '1', '', '', 13, '0', '100000', '-1*0*100000*101300', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (101400, '应用管理测试菜单11', '应用管理测试菜单11', '应用管理测试菜单11', 'Group', '1', '1', '', '', 14, '0', '100000', '-1*0*100000*101400', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (101500, '应用管理测试菜单12', '应用管理测试菜单12', '应用管理测试菜单12', 'Group', '1', '1', '', '', 15, '0', '100000', '-1*0*100000*101500', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (101600, '应用管理测试菜单13', '应用管理测试菜单13', '应用管理测试菜单13', 'Group', '1', '1', '', '', 16, '0', '100000', '-1*0*100000*101600', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (101700, '应用管理测试菜单14', '应用管理测试菜单14', '应用管理测试菜单14', 'Group', '1', '1', '', '', 16, '0', '100000', '-1*0*100000*101700', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (101800, '应用管理测试菜单15', '应用管理测试菜单15', '应用管理测试菜单15', 'Group', '1', '1', '', '', 16, '0', '100000', '-1*0*100000*101800', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (101900, '应用管理测试菜单16', '应用管理测试菜单16', '应用管理测试菜单16', 'Group', '1', '1', '', '', 17, '0', '100000', '-1*0*100000*101900', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (102000, '应用管理测试菜单17', '应用管理测试菜单17', '应用管理测试菜单17', 'Group', '1', '1', '', '', 18, '0', '100000', '-1*0*100000*102000', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (200000, '系统设置', '系统设置', '系统设置', 'GroupTopMenu', '1', '1', 'LeftMenu.do', '', 50, '0', '0', '-1*0*200000', 'frame-top-menu-data', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (200100, '系统设置测试菜单1', '系统设置测试菜单1', '系统设置测试菜单1', 'Group', '1', '1', '', '', 51, '0', '200000', '-1*0*200000*200100', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (200200, '系统设置测试菜单2', '系统设置测试菜单2', '系统设置测试菜单2', 'Group', '1', '1', '', '', 52, '0', '200000', '-1*0*200000*200200', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (200300, '系统设置测试菜单3', '系统设置测试菜单3', '系统设置测试菜单3', 'Group', '1', '1', '', '', 53, '0', '200000', '-1*0*200000*200300', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (200400, '系统设置测试菜单4', '系统设置测试菜单4', '系统设置测试菜单4', 'Group', '1', '1', '', '', 54, '0', '200000', '-1*0*200000*200400', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (200410, '系统设置测试菜单4-1', '系统设置测试菜单4-1', '系统设置测试菜单4-1', 'Group', '1', '1', '', '', 55, '0', '200400', '-1*0*200000*200400*200410', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (200420, '系统设置测试菜单4-2', '系统设置测试菜单4-2', '系统设置测试菜单4-2', 'Group', '1', '1', '', '', 55, '0', '200400', '-1*0*200000*200400*200420', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (200430, '系统设置测试菜单4-3', '系统设置测试菜单4-3', '系统设置测试菜单4-3', 'Group', '1', '1', '', '', 56, '0', '200400', '-1*0*200000*200400*200430', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (200431, '系统设置测试菜单4-3-1', '系统设置测试菜单4-3-1', '系统设置测试菜单4-3-1', 'Group', '1', '1', '', '', 57, '0', '200430', '-1*0*200000*200400*200430*200431', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (200432, '系统设置测试菜单4-3-2', '系统设置测试菜单4-3-2', '系统设置测试菜单4-3-2', 'Group', '1', '1', '', '', 58, '0', '200430', '-1*0*200000*200400*200430*200432', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (200433, '系统设置测试菜单4-3-3', '系统设置测试菜单4-3-3', '系统设置测试菜单4-3-3', 'Group', '1', '1', '', '', 58, '0', '200430', '-1*0*200000*200400*200430*200433', '', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (300000, '桌面管理', '桌面管理', '桌面管理', 'GroupTopMenu', '1', '1', 'LeftMenu.do', '', 100, '0', '0', '-1*0*300000', 'frame-top-menu-data', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (400000, '集成管理', '集成管理', '集成管理', 'GroupTopMenu', '1', '1', 'LeftMenu.do', '', 150, '0', '0', '-1*0*400000', 'frame-top-menu-data', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (500000, '基础设置', '基础设置', '基础设置', 'GroupTopMenu', '1', '1', 'LeftMenu.do', '', 200, '0', '0', '-1*0*500000', 'frame-top-menu-data', 1)


INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (600000, '基础设置1', '基础设置1', '基础设置1', 'GroupTopMenu', '1', '1', 'LeftMenu.do', '', 250, '0', '0', '-1*0*600000', 'frame-top-menu-data', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (700000, '基础设置2', '基础设置2', '基础设置2', 'GroupTopMenu', '1', '1', 'LeftMenu.do', '', 300, '0', '0', '-1*0*700000', 'frame-top-menu-data', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (800000, '基础设置3', '基础设置3', '基础设置3', 'GroupTopMenu', '1', '1', 'LeftMenu.do', '', 350, '0', '0', '-1*0*800000', 'frame-top-menu-data', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (900000, '基础设置4', '基础设置4', '基础设置4', 'GroupTopMenu', '1', '1', 'LeftMenu.do', '', 400, '0', '0', '-1*0*900000', 'frame-top-menu-data', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (1000000, '基础设置5', '基础设置5', '基础设置5', 'GroupTopMenu', '1', '1', 'LeftMenu.do', '', 450, '0', '0', '-1*0*1000000', 'frame-top-menu-data', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (1100000, '基础设置6', '基础设置6', '基础设置6', 'GroupTopMenu', '1', '1', 'LeftMenu.do', '', 500, '0', '0', '-1*0*1100000', 'frame-top-menu-data', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (1200000, '基础设置7', '基础设置7', '基础设置7', 'GroupTopMenu', '1', '1', 'LeftMenu.do', '', 550, '0', '0', '-1*0*1200000', 'frame-top-menu-data', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (1300000, '基础设置8', '基础设置8', '基础设置8', 'GroupTopMenu', '1', '1', 'LeftMenu.do', '', 600, '0', '0', '-1*0*1300000', 'frame-top-menu-data', 1)

INSERT INTO
  TB4D_MENU (MENU_ID, MENU_NAME, MENU_TEXT, MENU_VALUE, MENU_TYPE, IS_EXPAND, IS_SYSTEM, LEFT_URL, RIGHT_URL, ORDER_NUM, ORGAN_ID, PARENT_ID, PARENT_ID_LIST, ICON_CLASS_NAME, CHILD_COUNT)
VALUES (1400000, '基础设置9', '基础设置9', '基础设置9', 'GroupTopMenu', '1', '1', 'LeftMenu.do', '', 650, '0', '0', '-1*0*1400000', 'frame-top-menu-data', 1)