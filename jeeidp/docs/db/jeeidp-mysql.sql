/*
Navicat MySQL Data Transfer

Source Server         : ME
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : jeeidp

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-08-02 13:31:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cg_column_config
-- ----------------------------
DROP TABLE IF EXISTS `cg_column_config`;
CREATE TABLE `cg_column_config` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键ID',
  `table_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '表ID',
  `column_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '列名',
  `column_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '列类型',
  `column_length` int(8) DEFAULT NULL COMMENT '列长度',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `field_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '字段名',
  `field_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '字段类型',
  `nullable` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否为空',
  `relation_table` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '关联表名',
  `relation_column_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '关联表关联ID',
  `relation_column_text` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '关联表显示字段',
  `sort` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序',
  `is_key` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否主键',
  `show_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '页面显示类型',
  `is_query` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否查询',
  `query_mode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '查询模式',
  `query_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '查询类型',
  `is_show_list` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '列表是否显示',
  `is_show_form` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '表单是否显示',
  `form_valid_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '表单验证类型',
  `order_no` int(8) DEFAULT NULL COMMENT '字段顺序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cg_column_config
-- ----------------------------
INSERT INTO `cg_column_config` VALUES ('2570b583d4014d368963f7aa08937bfd', 'c724d5cd215e40e392bce5f6c0b33e80', 'name', 'varchar', '100', '名称', 'name', 'String', 'Y', null, null, null, 'N', 'N', 'text', 'Y', 'single', 'like', 'Y', 'Y', 'required', '2');
INSERT INTO `cg_column_config` VALUES ('410a3ab23c4f4a53ab02dd7db93086cd', 'c724d5cd215e40e392bce5f6c0b33e80', 'birthday', 'datetime', '0', '出生日期', 'birthday', 'Date', 'Y', null, null, null, 'N', 'N', 'date', 'Y', 'group', '=', 'Y', 'Y', '', '4');
INSERT INTO `cg_column_config` VALUES ('4e083f1435a2418c9f06818a63c077e1', 'c724d5cd215e40e392bce5f6c0b33e80', 'age', 'int', '10', '年龄', 'age', 'Integer', 'Y', null, null, null, 'N', 'N', 'text', 'N', 'single', '=', 'Y', 'Y', '', '3');
INSERT INTO `cg_column_config` VALUES ('8159ace767154e2bb1886b4b075f8f97', 'c724d5cd215e40e392bce5f6c0b33e80', 'hobby', 'varchar', '100', '爱好', 'hobby', 'String', 'Y', null, null, null, 'N', 'N', 'checkbox', 'N', 'single', '=', 'Y', 'Y', '', '7');
INSERT INTO `cg_column_config` VALUES ('b2b74a4ee5f4499592c4d69203298b78', 'c724d5cd215e40e392bce5f6c0b33e80', 'dept_id', 'varchar', '32', '部门', 'deptId', 'String', 'Y', null, null, null, 'N', 'N', 'select', 'N', 'single', '=', 'Y', 'Y', '', '5');
INSERT INTO `cg_column_config` VALUES ('b8aa0a722b8446c5bbe8bd83adb2a36d', 'c724d5cd215e40e392bce5f6c0b33e80', 'remark', 'text', '65535', '描述', 'remark', 'String', 'Y', null, null, null, 'N', 'N', 'textarea', 'N', 'single', '=', 'N', 'Y', '', '8');
INSERT INTO `cg_column_config` VALUES ('d2a02360feed4610afe1b79a0bd2f07e', 'c724d5cd215e40e392bce5f6c0b33e80', 'sex', 'char', '1', '性别', 'sex', 'String', 'Y', null, null, null, 'N', 'N', 'radio', 'N', 'single', '=', 'Y', 'Y', '', '6');
INSERT INTO `cg_column_config` VALUES ('dbadb5148d0344fb9f1c90b73757b52a', 'c724d5cd215e40e392bce5f6c0b33e80', 'demo_id', 'varchar', '32', '主鍵', 'demoId', 'String', 'N', null, null, null, 'N', 'Y', 'text', 'N', 'single', '=', 'N', 'N', '', '1');

-- ----------------------------
-- Table structure for cg_data_source
-- ----------------------------
DROP TABLE IF EXISTS `cg_data_source`;
CREATE TABLE `cg_data_source` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键ID',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `db_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据库类型',
  `db_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据库名称',
  `server` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '服务器IP',
  `port` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '端口号',
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cg_data_source
-- ----------------------------
INSERT INTO `cg_data_source` VALUES ('37039a75098c4e7eb4020f5b29e46d9a', '当前数据库', 'mysql', 'jeeidp', 'localhost', '3306', 'root', '123456');

-- ----------------------------
-- Table structure for cg_table_config
-- ----------------------------
DROP TABLE IF EXISTS `cg_table_config`;
CREATE TABLE `cg_table_config` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键ID',
  `table_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '表名',
  `entity_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类名',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `is_checkbox` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否多选框',
  `is_page` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否分页',
  `is_tree` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否树',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cg_table_config
-- ----------------------------
INSERT INTO `cg_table_config` VALUES ('c724d5cd215e40e392bce5f6c0b33e80', 'demo_test', 'DemoTest', '測試功能', 'Y', 'Y', null);

-- ----------------------------
-- Table structure for demo_test
-- ----------------------------
DROP TABLE IF EXISTS `demo_test`;
CREATE TABLE `demo_test` (
  `demo_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键ID',
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名',
  `age` int(8) DEFAULT NULL COMMENT '年龄',
  `birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `dept_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '部门',
  `sex` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '性别',
  `hobby` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '爱好',
  `remark` text COLLATE utf8_unicode_ci COMMENT '描述',
  PRIMARY KEY (`demo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of demo_test
-- ----------------------------
INSERT INTO `demo_test` VALUES ('9de57040b5604d06af5b24b5cf931324', '22', '22', '2017-01-19 00:00:00', '1', '1', '1,2', '22');

-- ----------------------------
-- Table structure for sys_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionary`;
CREATE TABLE `sys_dictionary` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键ID',
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '编码',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '名称',
  `group_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '分组id',
  `sort` int(8) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_dictionary
-- ----------------------------
INSERT INTO `sys_dictionary` VALUES ('095c3f17e91146a3a6206bac6a6117cb', '0', '女', '9', '2');
INSERT INTO `sys_dictionary` VALUES ('9', 'sex', '性别', null, null);
INSERT INTO `sys_dictionary` VALUES ('e71b548c4f914c3bb335715dfe3ecf78', '1', '男', '9', '1');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键ID',
  `log_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '日志类型(1:功能信息,2:功能异常,3:定时任务异常)',
  `log_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '日志标题',
  `log_content` text COLLATE utf8_unicode_ci COMMENT '日志内容',
  `operate_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作人',
  `operate_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作IP',
  `operate_date` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键ID',
  `menu_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单名称',
  `menu_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单路径',
  `menu_icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单图标',
  `parent_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '父级菜单ID',
  `sort` int(8) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('01', '系统管理', '', 'glyphicon glyphicon-cog', '0', '2');
INSERT INTO `sys_menu` VALUES ('0101', '用户管理', '/sysUser/init', 'glyphicon glyphicon-user', '01', '1');
INSERT INTO `sys_menu` VALUES ('0102', '角色管理', '/sysRole/init', 'glyphicon glyphicon-th-list', '01', '2');
INSERT INTO `sys_menu` VALUES ('0103', '菜单管理', '/sysMenu/init', 'glyphicon glyphicon-list-alt', '01', '3');
INSERT INTO `sys_menu` VALUES ('0104', '组织管理', '/sysOrg/init', 'glyphicon glyphicon-th-large', '01', '4');
INSERT INTO `sys_menu` VALUES ('0105', '数据字典', '/sysDictionary/init', 'glyphicon glyphicon-book', '01', '5');
INSERT INTO `sys_menu` VALUES ('02', '代码生成器', '', 'glyphicon glyphicon-send', '0', '2');
INSERT INTO `sys_menu` VALUES ('0201', '数据源', '/dataSource/init', 'glyphicon glyphicon-send', '02', '1');
INSERT INTO `sys_menu` VALUES ('0202', '表配置', '/tableConfig/init', 'glyphicon glyphicon-send', '02', '2');
INSERT INTO `sys_menu` VALUES ('03', '代码生成测试', '', 'glyphicon glyphicon-send', '0', '3');
INSERT INTO `sys_menu` VALUES ('0301', '测试功能', '/demoTest/init', 'glyphicon glyphicon-send', '03', '1');
INSERT INTO `sys_menu` VALUES ('1157f08857e0408aa0fab8bfa4e0704a', '定时任务', '/sysScheduler/init', '', '01', '6');
INSERT INTO `sys_menu` VALUES ('90cec4b2aa924ebba889fc18be307672', '系统日志', '/sysLog/init', '', '01', '7');

-- ----------------------------
-- Table structure for sys_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键ID',
  `org_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '组织编码',
  `org_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '组织名称',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `parent_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '父级菜单ID',
  `create_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO `sys_org` VALUES ('1', '001', '济南分公司', '济南', '0', null, null, null, null);
INSERT INTO `sys_org` VALUES ('2', '002', '北京分公司', '北京', '0', null, null, null, null);
INSERT INTO `sys_org` VALUES ('3', '003', '上海分公司', '上海', '0', null, null, null, null);
INSERT INTO `sys_org` VALUES ('4', '001001', '行政部', '行政', '1', null, null, null, null);
INSERT INTO `sys_org` VALUES ('5', '001002', '技术部', '技术', '1', null, null, null, null);
INSERT INTO `sys_org` VALUES ('6', '003002', '人事部', '人事', '3', null, null, null, null);
INSERT INTO `sys_org` VALUES ('7', '003001', '行政部', '行政', '3', null, null, null, null);
INSERT INTO `sys_org` VALUES ('8', '004', '杭州分公司', '杭州', '0', null, null, null, null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键ID',
  `role_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色编码',
  `role_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色名称',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `create_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '001', '系统管理员', '所有权限', null, null, null, null);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键ID',
  `role_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色ID',
  `menu_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('123f982847d848f6bb494bda42a24c91', '1', '0103');
INSERT INTO `sys_role_menu` VALUES ('23a21df4b37c4a629b1009c33272eef7', '1', '0301');
INSERT INTO `sys_role_menu` VALUES ('6ed2af9a8d09449d8ee3fe0b8066fdc6', '1', '0102');
INSERT INTO `sys_role_menu` VALUES ('72f9821f2b1b477d92f631d660fa3d46', '1', '0105');
INSERT INTO `sys_role_menu` VALUES ('7885080932fa4092b87f40d97e4903f2', '1', '0202');
INSERT INTO `sys_role_menu` VALUES ('8991424d1aa64ca0bca0f43dd79b4198', '1', '90cec4b2aa924ebba889fc18be307672');
INSERT INTO `sys_role_menu` VALUES ('a38aa1aeef8e405db3d05fee34b2ccfe', '1', '0104');
INSERT INTO `sys_role_menu` VALUES ('be022528c3104e2ba4bf397a3d7a85e2', '1', '1157f08857e0408aa0fab8bfa4e0704a');
INSERT INTO `sys_role_menu` VALUES ('d2ed19c670ed4b47b3981eaec688bdcc', '1', '03');
INSERT INTO `sys_role_menu` VALUES ('d5f69df24592428fa08f50cfe427a698', '1', '0101');
INSERT INTO `sys_role_menu` VALUES ('dcd608c517aa402b8834b16083a339e1', '1', '01');
INSERT INTO `sys_role_menu` VALUES ('de72566582394441bf929fd446d83359', '1', '02');
INSERT INTO `sys_role_menu` VALUES ('de8d7612200d4091922bca521c8ad127', '1', '0201');

-- ----------------------------
-- Table structure for sys_scheduler
-- ----------------------------
DROP TABLE IF EXISTS `sys_scheduler`;
CREATE TABLE `sys_scheduler` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键ID',
  `job_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '任务分组',
  `job_state` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '任务状态(1:成功,2:失败)',
  `job_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '任务执行类',
  `cron` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'cron表达式',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `enabled` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否启用(Y/N)',
  `create_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_scheduler
-- ----------------------------
INSERT INTO `sys_scheduler` VALUES ('21aa9b488ae24db7b2d531aaa78c67c7', '測試排程2', 'demo', '1', 'com.idp.scheduler.quartz.TestJob2', '0 0/10 * * * ?', '每10分钟执行一次', '2018-07-06 16:50:00', '2018-07-06 16:50:00', 'N', null, null, null, null);
INSERT INTO `sys_scheduler` VALUES ('5b03cde6858a4dd1bfed3f7ba5cf2497', '測試排程1', 'demo', '1', 'com.idp.scheduler.quartz.TestJob1', '0 0/5 * * * ?', '每5分钟执行一次', '2018-07-06 16:55:00', '2018-07-06 16:55:00', 'N', null, null, null, null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键ID',
  `username` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '姓名',
  `org_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '组织',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电话',
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `user_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户头像',
  `del_flag` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标识',
  `create_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'E10ADC3949BA59ABBE56E057F20F883E', '管理员', '5', '2018-05-07', '15912341234', '564396248@qq.com', '系统管理员-king', '20180426/201804260954277805b59bc8d746589a9bc9358aea2537.jpg', '0', null, null, null, null);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键ID',
  `user_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户ID',
  `role_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('fcad8ba4d4564feab7cc2ccc05e4c7ac', '1', '1');
