/*
Navicat Oracle Data Transfer
Oracle Client Version : 10.2.0.5.0

Source Server         : 2.125-oracle-king11-king
Source Server Version : 110200
Source Host           : 192.168.2.125:1521
Source Schema         : KING11

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2018-08-03 10:27:33
*/


-- ----------------------------
-- Table structure for CG_COLUMN_CONFIG
-- ----------------------------
DROP TABLE CG_COLUMN_CONFIG;
CREATE TABLE CG_COLUMN_CONFIG (
ID VARCHAR2(32) NOT NULL ,
TABLE_ID VARCHAR2(32) NOT NULL ,
COLUMN_NAME NVARCHAR2(50) NULL ,
COLUMN_TYPE NVARCHAR2(50) NULL ,
COLUMN_LENGTH NUMBER(8) NULL ,
DESCRIPTION NVARCHAR2(255) NULL ,
FIELD_NAME NVARCHAR2(50) NULL ,
FIELD_TYPE NVARCHAR2(50) NULL ,
NULLABLE VARCHAR(1) NULL ,
RELATION_TABLE NVARCHAR2(50) NULL ,
RELATION_COLUMN_ID NVARCHAR2(50) NULL ,
RELATION_COLUMN_TEXT NVARCHAR2(50) NULL ,
SORT NVARCHAR2(50) NULL ,
IS_KEY VARCHAR(1) NULL ,
SHOW_TYPE NVARCHAR2(50) NULL ,
IS_QUERY VARCHAR(1) NULL ,
QUERY_MODE NVARCHAR2(50) NULL ,
QUERY_TYPE NVARCHAR2(50) NULL ,
IS_SHOW_LIST VARCHAR(1) NULL ,
IS_SHOW_FORM VARCHAR(1) NULL ,
FORM_VALID_TYPE NVARCHAR2(100) NULL ,
ORDER_NO NUMBER(8) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN CG_COLUMN_CONFIG.ID IS '主键ID';
COMMENT ON COLUMN CG_COLUMN_CONFIG.TABLE_ID IS '表ID';
COMMENT ON COLUMN CG_COLUMN_CONFIG.COLUMN_NAME IS '列名';
COMMENT ON COLUMN CG_COLUMN_CONFIG.COLUMN_TYPE IS '列类型';
COMMENT ON COLUMN CG_COLUMN_CONFIG.COLUMN_LENGTH IS '列长度';
COMMENT ON COLUMN CG_COLUMN_CONFIG.DESCRIPTION IS '描述';
COMMENT ON COLUMN CG_COLUMN_CONFIG.FIELD_NAME IS '字段名';
COMMENT ON COLUMN CG_COLUMN_CONFIG.FIELD_TYPE IS '字段类型';
COMMENT ON COLUMN CG_COLUMN_CONFIG.NULLABLE IS '是否为空';
COMMENT ON COLUMN CG_COLUMN_CONFIG.RELATION_TABLE IS '关联表名';
COMMENT ON COLUMN CG_COLUMN_CONFIG.RELATION_COLUMN_ID IS '关联表关联ID';
COMMENT ON COLUMN CG_COLUMN_CONFIG.RELATION_COLUMN_TEXT IS '关联表显示字段';
COMMENT ON COLUMN CG_COLUMN_CONFIG.SORT IS '排序';
COMMENT ON COLUMN CG_COLUMN_CONFIG.IS_KEY IS '是否主键';
COMMENT ON COLUMN CG_COLUMN_CONFIG.SHOW_TYPE IS '页面显示类型';
COMMENT ON COLUMN CG_COLUMN_CONFIG.IS_QUERY IS '是否查询';
COMMENT ON COLUMN CG_COLUMN_CONFIG.QUERY_MODE IS '查询模式';
COMMENT ON COLUMN CG_COLUMN_CONFIG.QUERY_TYPE IS '查询类型';
COMMENT ON COLUMN CG_COLUMN_CONFIG.IS_SHOW_LIST IS '列表是否显示';
COMMENT ON COLUMN CG_COLUMN_CONFIG.IS_SHOW_FORM IS '表单是否显示';
COMMENT ON COLUMN CG_COLUMN_CONFIG.FORM_VALID_TYPE IS '表单验证类型';
COMMENT ON COLUMN CG_COLUMN_CONFIG.ORDER_NO IS '字段顺序';

-- ----------------------------
-- Records of CG_COLUMN_CONFIG
-- ----------------------------
INSERT INTO CG_COLUMN_CONFIG VALUES ('2570b583d4014d368963f7aa08937bfd', 'c724d5cd215e40e392bce5f6c0b33e80', 'name', 'varchar', 100, '名称', 'name', 'String', 'Y', null, null, null, 'N', 'N', 'text', 'Y', 'single', 'like', 'Y', 'Y', 'required', 2);
INSERT INTO CG_COLUMN_CONFIG VALUES ('410a3ab23c4f4a53ab02dd7db93086cd', 'c724d5cd215e40e392bce5f6c0b33e80', 'birthday', 'datetime', 0, '出生日期', 'birthday', 'Date', 'Y', null, null, null, 'N', 'N', 'date', 'Y', 'group', '=', 'Y', 'Y', null, 4);
INSERT INTO CG_COLUMN_CONFIG VALUES ('4e083f1435a2418c9f06818a63c077e1', 'c724d5cd215e40e392bce5f6c0b33e80', 'age', 'int', 10, '年龄', 'age', 'Integer', 'Y', null, null, null, 'N', 'N', 'text', 'N', 'single', '=', 'Y', 'Y', null, '3');
INSERT INTO CG_COLUMN_CONFIG VALUES ('8159ace767154e2bb1886b4b075f8f97', 'c724d5cd215e40e392bce5f6c0b33e80', 'hobby', 'varchar', 100, '爱好', 'hobby', 'String', 'Y', null, null, null, 'N', 'N', 'checkbox', 'N', 'single', '=', 'Y', 'Y', null, 7);
INSERT INTO CG_COLUMN_CONFIG VALUES ('b2b74a4ee5f4499592c4d69203298b78', 'c724d5cd215e40e392bce5f6c0b33e80', 'dept_id', 'varchar', 32, '部门', 'deptId', 'String', 'Y', null, null, null, 'N', 'N', 'select', 'N', 'single', '=', 'Y', 'Y', null, 5);
INSERT INTO CG_COLUMN_CONFIG VALUES ('b8aa0a722b8446c5bbe8bd83adb2a36d', 'c724d5cd215e40e392bce5f6c0b33e80', 'remark', 'text', 65535, '描述', 'remark', 'String', 'Y', null, null, null, 'N', 'N', 'textarea', 'N', 'single', '=', 'N', 'Y', null, 8);
INSERT INTO CG_COLUMN_CONFIG VALUES ('d2a02360feed4610afe1b79a0bd2f07e', 'c724d5cd215e40e392bce5f6c0b33e80', 'sex', 'char', 1, '性别', 'sex', 'String', 'Y', null, null, null, 'N', 'N', 'radio', 'N', 'single', '=', 'Y', 'Y', null, 6);
INSERT INTO CG_COLUMN_CONFIG VALUES ('dbadb5148d0344fb9f1c90b73757b52a', 'c724d5cd215e40e392bce5f6c0b33e80', 'demo_id', 'varchar', 32, '主鍵', 'demoId', 'String', 'N', null, null, null, 'N', 'Y', 'text', 'N', 'single', '=', 'N', 'N', null, 1);

-- ----------------------------
-- Table structure for CG_DATA_SOURCE
-- ----------------------------
DROP TABLE CG_DATA_SOURCE;
CREATE TABLE CG_DATA_SOURCE (
ID VARCHAR2(32) NOT NULL ,
DESCRIPTION NVARCHAR2(255) NULL ,
DB_TYPE NVARCHAR2(50) NULL ,
DB_NAME NVARCHAR2(50) NULL ,
SERVER NVARCHAR2(50) NULL ,
PORT NVARCHAR2(10) NULL ,
USERNAME NVARCHAR2(50) NULL ,
PASSWORD NVARCHAR2(50) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN CG_DATA_SOURCE.ID IS '主键ID';
COMMENT ON COLUMN CG_DATA_SOURCE.DESCRIPTION IS '描述';
COMMENT ON COLUMN CG_DATA_SOURCE.DB_TYPE IS '数据库类型';
COMMENT ON COLUMN CG_DATA_SOURCE.DB_NAME IS '数据库名称';
COMMENT ON COLUMN CG_DATA_SOURCE.SERVER IS '服务器IP';
COMMENT ON COLUMN CG_DATA_SOURCE.PORT IS '端口号';
COMMENT ON COLUMN CG_DATA_SOURCE.USERNAME IS '用户名';
COMMENT ON COLUMN CG_DATA_SOURCE.PASSWORD IS '密码';

-- ----------------------------
-- Records of CG_DATA_SOURCE
-- ----------------------------
INSERT INTO CG_DATA_SOURCE VALUES ('37039a75098c4e7eb4020f5b29e46d9a', '当前数据库', 'mysql', 'jeeidp', 'localhost', '3306', 'root', '123456');

-- ----------------------------
-- Table structure for CG_TABLE_CONFIG
-- ----------------------------
DROP TABLE CG_TABLE_CONFIG;
CREATE TABLE CG_TABLE_CONFIG (
ID VARCHAR2(32) NOT NULL ,
TABLE_NAME NVARCHAR2(50) NULL ,
ENTITY_NAME NVARCHAR2(50) NULL ,
DESCRIPTION NVARCHAR2(255) NULL ,
IS_CHECKBOX VARCHAR(1) NULL ,
IS_PAGE VARCHAR(1) NULL ,
IS_TREE VARCHAR(1) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN CG_TABLE_CONFIG.ID IS '主键ID';
COMMENT ON COLUMN CG_TABLE_CONFIG.TABLE_NAME IS '表名';
COMMENT ON COLUMN CG_TABLE_CONFIG.ENTITY_NAME IS '类名';
COMMENT ON COLUMN CG_TABLE_CONFIG.DESCRIPTION IS '描述';
COMMENT ON COLUMN CG_TABLE_CONFIG.IS_CHECKBOX IS '是否多选框';
COMMENT ON COLUMN CG_TABLE_CONFIG.IS_PAGE IS '是否分页';
COMMENT ON COLUMN CG_TABLE_CONFIG.IS_TREE IS '是否树';

-- ----------------------------
-- Records of CG_TABLE_CONFIG
-- ----------------------------
INSERT INTO CG_TABLE_CONFIG VALUES ('c724d5cd215e40e392bce5f6c0b33e80', 'demo_test', 'DemoTest', '測試功能', 'Y', 'Y', null);

-- ----------------------------
-- Table structure for DEMO_TEST
-- ----------------------------
DROP TABLE DEMO_TEST;
CREATE TABLE DEMO_TEST (
DEMO_ID VARCHAR2(32) NOT NULL ,
NAME NVARCHAR2(100) NULL ,
AGE NUMBER(8) NULL ,
BIRTHDAY DATE NULL ,
DEPT_ID VARCHAR2(32) NULL ,
SEX VARCHAR(1) NULL ,
HOBBY NVARCHAR2(100) NULL ,
REMARK NCLOB NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN DEMO_TEST.DEMO_ID IS '主键ID';
COMMENT ON COLUMN DEMO_TEST.NAME IS '姓名';
COMMENT ON COLUMN DEMO_TEST.AGE IS '年龄';
COMMENT ON COLUMN DEMO_TEST.BIRTHDAY IS '出生日期';
COMMENT ON COLUMN DEMO_TEST.DEPT_ID IS '部门';
COMMENT ON COLUMN DEMO_TEST.SEX IS '性别';
COMMENT ON COLUMN DEMO_TEST.HOBBY IS '爱好';
COMMENT ON COLUMN DEMO_TEST.REMARK IS '描述';

-- ----------------------------
-- Records of DEMO_TEST
-- ----------------------------
INSERT INTO DEMO_TEST VALUES ('9de57040b5604d06af5b24b5cf931324', '22', '22', TO_DATE('2017-01-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1', '1', '1,2', '22');

-- ----------------------------
-- Table structure for SYS_DICTIONARY
-- ----------------------------
DROP TABLE SYS_DICTIONARY;
CREATE TABLE SYS_DICTIONARY (
ID VARCHAR2(32) NOT NULL ,
CODE NVARCHAR2(50) NULL ,
NAME NVARCHAR2(50) NULL ,
GROUP_ID NVARCHAR2(32) NULL ,
SORT NUMBER(8) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN SYS_DICTIONARY.ID IS '主键ID';
COMMENT ON COLUMN SYS_DICTIONARY.CODE IS '编码';
COMMENT ON COLUMN SYS_DICTIONARY.NAME IS '名称';
COMMENT ON COLUMN SYS_DICTIONARY.GROUP_ID IS '分组id';
COMMENT ON COLUMN SYS_DICTIONARY.SORT IS '排序';

-- ----------------------------
-- Records of SYS_DICTIONARY
-- ----------------------------
INSERT INTO SYS_DICTIONARY VALUES ('0001', 'sex', '性别', null, null);
INSERT INTO SYS_DICTIONARY VALUES ('695e132107594d0f84911acea31b2a64', '1', '男', '0001', '1');
INSERT INTO SYS_DICTIONARY VALUES ('171857a101fd4cee833ee727b9547522', '0', '女', '0001', '2');

-- ----------------------------
-- Table structure for SYS_LOG
-- ----------------------------
DROP TABLE SYS_LOG;
CREATE TABLE SYS_LOG (
ID VARCHAR2(32) NOT NULL ,
LOG_TYPE NVARCHAR2(20) NULL ,
LOG_TITLE NVARCHAR2(255) NULL ,
LOG_CONTENT NCLOB NULL ,
OPERATE_USER NVARCHAR2(32) NULL ,
OPERATE_IP NVARCHAR2(20) NULL ,
OPERATE_DATE DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN SYS_LOG.ID IS '主键ID';
COMMENT ON COLUMN SYS_LOG.LOG_TYPE IS '日志类型(1:功能信息,2:功能异常,3:定时任务异常)';
COMMENT ON COLUMN SYS_LOG.LOG_TITLE IS '日志标题';
COMMENT ON COLUMN SYS_LOG.LOG_CONTENT IS '日志内容';
COMMENT ON COLUMN SYS_LOG.OPERATE_USER IS '操作人';
COMMENT ON COLUMN SYS_LOG.OPERATE_IP IS '操作IP';
COMMENT ON COLUMN SYS_LOG.OPERATE_DATE IS '操作时间';

-- ----------------------------
-- Table structure for SYS_MENU
-- ----------------------------
DROP TABLE SYS_MENU;
CREATE TABLE SYS_MENU (
ID VARCHAR2(32) NOT NULL ,
MENU_NAME NVARCHAR2(200) NULL ,
MENU_URL NVARCHAR2(200) NULL ,
MENU_ICON NVARCHAR2(100) NULL ,
PARENT_ID VARCHAR2(32) NULL ,
SORT NUMBER(8) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN SYS_MENU.ID IS '主键ID';
COMMENT ON COLUMN SYS_MENU.MENU_NAME IS '菜单名称';
COMMENT ON COLUMN SYS_MENU.MENU_URL IS '菜单路径';
COMMENT ON COLUMN SYS_MENU.MENU_ICON IS '菜单图标';
COMMENT ON COLUMN SYS_MENU.PARENT_ID IS '父级菜单ID';
COMMENT ON COLUMN SYS_MENU.SORT IS '排序';

-- ----------------------------
-- Records of SYS_MENU
-- ----------------------------
INSERT INTO SYS_MENU VALUES ('01', '系统管理', null, 'glyphicon glyphicon-cog', '0', '2');
INSERT INTO SYS_MENU VALUES ('0101', '用户管理', '/sysUser/init', 'glyphicon glyphicon-user', '01', '1');
INSERT INTO SYS_MENU VALUES ('0102', '角色管理', '/sysRole/init', 'glyphicon glyphicon-th-list', '01', '2');
INSERT INTO SYS_MENU VALUES ('0103', '菜单管理', '/sysMenu/init', 'glyphicon glyphicon-list-alt', '01', '3');
INSERT INTO SYS_MENU VALUES ('0104', '组织管理', '/sysOrg/init', 'glyphicon glyphicon-th-large', '01', '4');
INSERT INTO SYS_MENU VALUES ('0105', '数据字典', '/sysDictionary/init', 'glyphicon glyphicon-book', '01', '5');
INSERT INTO SYS_MENU VALUES ('0106', '定时任务', '/sysScheduler/init', null, '01', '6');
INSERT INTO SYS_MENU VALUES ('0107', '系统日志', '/sysLog/init', null, '01', '7');
INSERT INTO SYS_MENU VALUES ('02', '代码生成器', null, 'glyphicon glyphicon-send', '0', '2');
INSERT INTO SYS_MENU VALUES ('0201', '数据源', '/dataSource/init', 'glyphicon glyphicon-send', '02', '1');
INSERT INTO SYS_MENU VALUES ('0202', '表配置', '/tableConfig/init', 'glyphicon glyphicon-send', '02', '2');
INSERT INTO SYS_MENU VALUES ('03', '代码生成测试', null, 'glyphicon glyphicon-send', '0', '3');
INSERT INTO SYS_MENU VALUES ('0301', '测试功能', '/demoTest/init', 'glyphicon glyphicon-send', '03', '1');

-- ----------------------------
-- Table structure for SYS_ORG
-- ----------------------------
DROP TABLE SYS_ORG;
CREATE TABLE SYS_ORG (
ID VARCHAR2(32) NOT NULL ,
ORG_CODE NVARCHAR2(50) NULL ,
ORG_NAME NVARCHAR2(50) NULL ,
DESCRIPTION NVARCHAR2(255) NULL ,
PARENT_ID VARCHAR2(32) NULL ,
CREATE_USER VARCHAR2(32) NULL ,
CREATE_DATE DATE NULL ,
UPDATE_USER VARCHAR2(32) NULL ,
UPDATE_DATE DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN SYS_ORG.ID IS '主键ID';
COMMENT ON COLUMN SYS_ORG.ORG_CODE IS '组织编码';
COMMENT ON COLUMN SYS_ORG.ORG_NAME IS '组织名称';
COMMENT ON COLUMN SYS_ORG.DESCRIPTION IS '备注';
COMMENT ON COLUMN SYS_ORG.PARENT_ID IS '父级菜单ID';
COMMENT ON COLUMN SYS_ORG.CREATE_USER IS '创建人';
COMMENT ON COLUMN SYS_ORG.CREATE_DATE IS '创建日期';
COMMENT ON COLUMN SYS_ORG.UPDATE_USER IS '修改人';
COMMENT ON COLUMN SYS_ORG.UPDATE_DATE IS '修改日期';

-- ----------------------------
-- Records of SYS_ORG
-- ----------------------------
INSERT INTO SYS_ORG VALUES ('1', '001', '济南分公司', '济南', '0', null, null, null, null);
INSERT INTO SYS_ORG VALUES ('2', '002', '北京分公司', '北京', '0', null, null, null, null);
INSERT INTO SYS_ORG VALUES ('3', '003', '上海分公司', '上海', '0', null, null, null, null);
INSERT INTO SYS_ORG VALUES ('4', '001001', '行政部', '行政', '1', null, null, null, null);
INSERT INTO SYS_ORG VALUES ('5', '001002', '技术部', '技术', '1', null, null, null, null);
INSERT INTO SYS_ORG VALUES ('6', '003002', '人事部', '人事', '3', null, null, null, null);
INSERT INTO SYS_ORG VALUES ('7', '003001', '行政部', '行政', '3', null, null, null, null);
INSERT INTO SYS_ORG VALUES ('8', '004', '杭州分公司', '杭州', '0', null, null, null, null);

-- ----------------------------
-- Table structure for SYS_ROLE
-- ----------------------------
DROP TABLE SYS_ROLE;
CREATE TABLE SYS_ROLE (
ID VARCHAR2(32) NOT NULL ,
ROLE_CODE NVARCHAR2(50) NULL ,
ROLE_NAME NVARCHAR2(50) NULL ,
DESCRIPTION NVARCHAR2(255) NULL ,
CREATE_USER VARCHAR2(32) NULL ,
CREATE_DATE DATE NULL ,
UPDATE_USER VARCHAR2(32) NULL ,
UPDATE_DATE DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN SYS_ROLE.ID IS '主键ID';
COMMENT ON COLUMN SYS_ROLE.ROLE_CODE IS '角色编码';
COMMENT ON COLUMN SYS_ROLE.ROLE_NAME IS '角色名称';
COMMENT ON COLUMN SYS_ROLE.DESCRIPTION IS '描述';
COMMENT ON COLUMN SYS_ROLE.CREATE_USER IS '创建人';
COMMENT ON COLUMN SYS_ROLE.CREATE_DATE IS '创建日期';
COMMENT ON COLUMN SYS_ROLE.UPDATE_USER IS '修改人';
COMMENT ON COLUMN SYS_ROLE.UPDATE_DATE IS '修改日期';

-- ----------------------------
-- Records of SYS_ROLE
-- ----------------------------
INSERT INTO SYS_ROLE VALUES ('1', '001', '系统管理员', '所有权限', null, null, '1', TO_DATE('2018-08-02 17:35:50', 'YYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for SYS_ROLE_MENU
-- ----------------------------
DROP TABLE SYS_ROLE_MENU;
CREATE TABLE SYS_ROLE_MENU (
ID VARCHAR2(32) NOT NULL ,
ROLE_ID VARCHAR2(32) NULL ,
MENU_ID VARCHAR2(32) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN SYS_ROLE_MENU.ID IS '主键ID';
COMMENT ON COLUMN SYS_ROLE_MENU.ROLE_ID IS '角色ID';
COMMENT ON COLUMN SYS_ROLE_MENU.MENU_ID IS '菜单ID';

-- ----------------------------
-- Records of SYS_ROLE_MENU
-- ----------------------------
INSERT INTO SYS_ROLE_MENU VALUES ('295a8cf1bfb643cfb3f353f2ab2ea6de', '1', '0102');
INSERT INTO SYS_ROLE_MENU VALUES ('aa129b1a12f74ea8b694dad1d9a22173', '1', '0103');
INSERT INTO SYS_ROLE_MENU VALUES ('92ecba873428490a8b475b840254c99e', '1', '0104');
INSERT INTO SYS_ROLE_MENU VALUES ('bdd3935d43e34400a74c421d10a83d7c', '1', '0105');
INSERT INTO SYS_ROLE_MENU VALUES ('e3af08581bf24b56a5da940e1fc4f238', '1', '0106');
INSERT INTO SYS_ROLE_MENU VALUES ('db95226972a94bedb8929c8b6717cb3e', '1', '0107');
INSERT INTO SYS_ROLE_MENU VALUES ('ffb41990d0cb47c5980eb2839e937a46', '1', '02');
INSERT INTO SYS_ROLE_MENU VALUES ('d070b558876b44dbb668c6ad0d6b86e1', '1', '0201');
INSERT INTO SYS_ROLE_MENU VALUES ('03742830a1b7476abf4d1003d2195e1a', '1', '0202');
INSERT INTO SYS_ROLE_MENU VALUES ('5eccf065a1184fe399e1a6fed6a24a58', '1', '03');
INSERT INTO SYS_ROLE_MENU VALUES ('fa4ee2c9d90047038fe4674a25f4cf19', '1', '0301');
INSERT INTO SYS_ROLE_MENU VALUES ('41fa5f2f41314e129262de97ac9e7399', '1', '01');
INSERT INTO SYS_ROLE_MENU VALUES ('93a1515ca15a4429b20d9ed0ab1e6724', '1', '0101');

-- ----------------------------
-- Table structure for SYS_SCHEDULER
-- ----------------------------
DROP TABLE SYS_SCHEDULER;
CREATE TABLE SYS_SCHEDULER (
ID VARCHAR2(32) NOT NULL ,
JOB_NAME NVARCHAR2(255) NULL ,
JOB_GROUP NVARCHAR2(255) NULL ,
JOB_STATE VARCHAR2(1) NULL ,
JOB_CLASS NVARCHAR2(255) NULL ,
CRON NVARCHAR2(255) NULL ,
DESCRIPTION NVARCHAR2(255) NULL ,
START_TIME DATE NULL ,
END_TIME DATE NULL ,
ENABLED VARCHAR2(1) NULL ,
CREATE_USER VARCHAR2(32) NULL ,
CREATE_DATE DATE NULL ,
UPDATE_USER VARCHAR2(32) NULL ,
UPDATE_DATE DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN SYS_SCHEDULER.ID IS '主键ID';
COMMENT ON COLUMN SYS_SCHEDULER.JOB_NAME IS '任务名称';
COMMENT ON COLUMN SYS_SCHEDULER.JOB_GROUP IS '任务分组';
COMMENT ON COLUMN SYS_SCHEDULER.JOB_STATE IS '任务状态(1:成功,2:失败)';
COMMENT ON COLUMN SYS_SCHEDULER.JOB_CLASS IS '任务执行类';
COMMENT ON COLUMN SYS_SCHEDULER.CRON IS 'cron表达式';
COMMENT ON COLUMN SYS_SCHEDULER.DESCRIPTION IS '描述';
COMMENT ON COLUMN SYS_SCHEDULER.START_TIME IS '开始时间';
COMMENT ON COLUMN SYS_SCHEDULER.END_TIME IS '结束时间';
COMMENT ON COLUMN SYS_SCHEDULER.ENABLED IS '是否启用(Y/N)';
COMMENT ON COLUMN SYS_SCHEDULER.CREATE_USER IS '创建人';
COMMENT ON COLUMN SYS_SCHEDULER.CREATE_DATE IS '创建日期';
COMMENT ON COLUMN SYS_SCHEDULER.UPDATE_USER IS '修改人';
COMMENT ON COLUMN SYS_SCHEDULER.UPDATE_DATE IS '修改日期';

-- ----------------------------
-- Records of SYS_SCHEDULER
-- ----------------------------
INSERT INTO SYS_SCHEDULER VALUES ('21aa9b488ae24db7b2d531aaa78c67c7', '測試排程2', 'demo', '1', 'com.idp.scheduler.quartz.TestJob2', '0 0/10 * * * ?', '每10分钟执行一次', TO_DATE('2018-07-06 16:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2018-07-06 16:50:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', null, null, null, null);
INSERT INTO SYS_SCHEDULER VALUES ('5b03cde6858a4dd1bfed3f7ba5cf2497', '測試排程1', 'demo', '1', 'com.idp.scheduler.quartz.TestJob1', '0 0/5 * * * ?', '每5分钟执行一次', TO_DATE('2018-07-06 16:55:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2018-07-06 16:55:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', null, null, '1', TO_DATE('2018-08-02 19:53:13', 'YYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for SYS_USER
-- ----------------------------
DROP TABLE SYS_USER;
CREATE TABLE SYS_USER (
ID VARCHAR2(32) NOT NULL ,
USERNAME NVARCHAR2(50) NULL ,
PASSWORD NVARCHAR2(50) NULL ,
NAME NVARCHAR2(50) NULL ,
ORG_ID NVARCHAR2(32) NULL ,
BIRTHDAY DATE NULL ,
PHONE NVARCHAR2(11) NULL ,
EMAIL NVARCHAR2(50) NULL ,
DESCRIPTION NVARCHAR2(255) NULL ,
USER_PHOTO NVARCHAR2(255) NULL ,
DEL_FLAG VARCHAR(1) NULL ,
CREATE_USER VARCHAR2(32) NULL ,
CREATE_DATE DATE NULL ,
UPDATE_USER VARCHAR2(32) NULL ,
UPDATE_DATE DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN SYS_USER.ID IS '主键ID';
COMMENT ON COLUMN SYS_USER.USERNAME IS '用户名';
COMMENT ON COLUMN SYS_USER.PASSWORD IS '密码';
COMMENT ON COLUMN SYS_USER.NAME IS '姓名';
COMMENT ON COLUMN SYS_USER.ORG_ID IS '组织';
COMMENT ON COLUMN SYS_USER.BIRTHDAY IS '出生日期';
COMMENT ON COLUMN SYS_USER.PHONE IS '电话';
COMMENT ON COLUMN SYS_USER.EMAIL IS '邮箱';
COMMENT ON COLUMN SYS_USER.DESCRIPTION IS '备注';
COMMENT ON COLUMN SYS_USER.USER_PHOTO IS '用户头像';
COMMENT ON COLUMN SYS_USER.DEL_FLAG IS '删除标识';
COMMENT ON COLUMN SYS_USER.CREATE_USER IS '创建人';
COMMENT ON COLUMN SYS_USER.CREATE_DATE IS '创建日期';
COMMENT ON COLUMN SYS_USER.UPDATE_USER IS '修改人';
COMMENT ON COLUMN SYS_USER.UPDATE_DATE IS '修改日期';

-- ----------------------------
-- Records of SYS_USER
-- ----------------------------
INSERT INTO SYS_USER VALUES ('1', 'admin', 'E10ADC3949BA59ABBE56E057F20F883E', '管理员', '5', TO_DATE('2018-05-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '15912341234', '564396248@qq.com', '系统管理员-king', '20180426/201804260954277805b59bc8d746589a9bc9358aea2537.jpg', '0', null, null, '1', TO_DATE('2018-08-02 16:48:17', 'YYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for SYS_USER_ROLE
-- ----------------------------
DROP TABLE SYS_USER_ROLE;
CREATE TABLE SYS_USER_ROLE (
ID VARCHAR2(32) NOT NULL ,
USER_ID VARCHAR2(32) NULL ,
ROLE_ID VARCHAR2(32) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN SYS_USER_ROLE.ID IS '主键ID';
COMMENT ON COLUMN SYS_USER_ROLE.USER_ID IS '用户ID';
COMMENT ON COLUMN SYS_USER_ROLE.ROLE_ID IS '角色ID';

-- ----------------------------
-- Records of SYS_USER_ROLE
-- ----------------------------
INSERT INTO SYS_USER_ROLE VALUES ('cc2b0bd47cd149d0a64b0499c8be94ef', '1', '1');

-- ----------------------------
-- Indexes structure for table CG_COLUMN_CONFIG
-- ----------------------------

-- ----------------------------
-- Checks structure for table CG_COLUMN_CONFIG
-- ----------------------------
ALTER TABLE CG_COLUMN_CONFIG ADD CHECK (ID IS NOT NULL);
ALTER TABLE CG_COLUMN_CONFIG ADD CHECK (TABLE_ID IS NOT NULL);
ALTER TABLE CG_COLUMN_CONFIG ADD CHECK (id IS NOT NULL);
ALTER TABLE CG_COLUMN_CONFIG ADD CHECK (table_id IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table CG_COLUMN_CONFIG
-- ----------------------------
ALTER TABLE CG_COLUMN_CONFIG ADD PRIMARY KEY (ID);

-- ----------------------------
-- Indexes structure for table CG_DATA_SOURCE
-- ----------------------------

-- ----------------------------
-- Checks structure for table CG_DATA_SOURCE
-- ----------------------------
ALTER TABLE CG_DATA_SOURCE ADD CHECK (ID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table CG_DATA_SOURCE
-- ----------------------------
ALTER TABLE CG_DATA_SOURCE ADD PRIMARY KEY (ID);

-- ----------------------------
-- Indexes structure for table CG_TABLE_CONFIG
-- ----------------------------

-- ----------------------------
-- Checks structure for table CG_TABLE_CONFIG
-- ----------------------------
ALTER TABLE CG_TABLE_CONFIG ADD CHECK (ID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table CG_TABLE_CONFIG
-- ----------------------------
ALTER TABLE CG_TABLE_CONFIG ADD PRIMARY KEY (ID);

-- ----------------------------
-- Indexes structure for table DEMO_TEST
-- ----------------------------

-- ----------------------------
-- Checks structure for table DEMO_TEST
-- ----------------------------
ALTER TABLE DEMO_TEST ADD CHECK (DEMO_ID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table DEMO_TEST
-- ----------------------------
ALTER TABLE DEMO_TEST ADD PRIMARY KEY (DEMO_ID);

-- ----------------------------
-- Indexes structure for table SYS_DICTIONARY
-- ----------------------------

-- ----------------------------
-- Checks structure for table SYS_DICTIONARY
-- ----------------------------
ALTER TABLE SYS_DICTIONARY ADD CHECK (ID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_DICTIONARY
-- ----------------------------
ALTER TABLE SYS_DICTIONARY ADD PRIMARY KEY (ID);

-- ----------------------------
-- Indexes structure for table SYS_LOG
-- ----------------------------

-- ----------------------------
-- Checks structure for table SYS_LOG
-- ----------------------------
ALTER TABLE SYS_LOG ADD CHECK (ID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_LOG
-- ----------------------------
ALTER TABLE SYS_LOG ADD PRIMARY KEY (ID);

-- ----------------------------
-- Indexes structure for table SYS_MENU
-- ----------------------------

-- ----------------------------
-- Checks structure for table SYS_MENU
-- ----------------------------
ALTER TABLE SYS_MENU ADD CHECK (ID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_MENU
-- ----------------------------
ALTER TABLE SYS_MENU ADD PRIMARY KEY (ID);

-- ----------------------------
-- Indexes structure for table SYS_ORG
-- ----------------------------

-- ----------------------------
-- Checks structure for table SYS_ORG
-- ----------------------------
ALTER TABLE SYS_ORG ADD CHECK (ID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_ORG
-- ----------------------------
ALTER TABLE SYS_ORG ADD PRIMARY KEY (ID);

-- ----------------------------
-- Indexes structure for table SYS_ROLE
-- ----------------------------

-- ----------------------------
-- Checks structure for table SYS_ROLE
-- ----------------------------
ALTER TABLE SYS_ROLE ADD CHECK (ID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_ROLE
-- ----------------------------
ALTER TABLE SYS_ROLE ADD PRIMARY KEY (ID);

-- ----------------------------
-- Indexes structure for table SYS_ROLE_MENU
-- ----------------------------

-- ----------------------------
-- Checks structure for table SYS_ROLE_MENU
-- ----------------------------
ALTER TABLE SYS_ROLE_MENU ADD CHECK (ID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_ROLE_MENU
-- ----------------------------
ALTER TABLE SYS_ROLE_MENU ADD PRIMARY KEY (ID);

-- ----------------------------
-- Indexes structure for table SYS_SCHEDULER
-- ----------------------------

-- ----------------------------
-- Checks structure for table SYS_SCHEDULER
-- ----------------------------
ALTER TABLE SYS_SCHEDULER ADD CHECK (ID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_SCHEDULER
-- ----------------------------
ALTER TABLE SYS_SCHEDULER ADD PRIMARY KEY (ID);

-- ----------------------------
-- Indexes structure for table SYS_USER
-- ----------------------------

-- ----------------------------
-- Checks structure for table SYS_USER
-- ----------------------------
ALTER TABLE SYS_USER ADD CHECK (ID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_USER
-- ----------------------------
ALTER TABLE SYS_USER ADD PRIMARY KEY (ID);

-- ----------------------------
-- Indexes structure for table SYS_USER_ROLE
-- ----------------------------

-- ----------------------------
-- Checks structure for table SYS_USER_ROLE
-- ----------------------------
ALTER TABLE SYS_USER_ROLE ADD CHECK (ID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_USER_ROLE
-- ----------------------------
ALTER TABLE SYS_USER_ROLE ADD PRIMARY KEY (ID);
