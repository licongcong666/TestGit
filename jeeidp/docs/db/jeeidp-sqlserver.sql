/*
Navicat SQL Server Data Transfer

Source Server         : 2.128-sqlserver
Source Server Version : 110000
Source Host           : 192.168.2.128:1433
Source Database       : jeeidp
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2018-08-02 13:25:46
*/


-- ----------------------------
-- Table structure for cg_column_config
-- ----------------------------
DROP TABLE [dbo].[cg_column_config]
GO
CREATE TABLE [dbo].[cg_column_config] (
[id] varchar(32) NOT NULL ,
[table_id] varchar(32) NOT NULL ,
[column_name] nvarchar(50) NULL ,
[column_type] nvarchar(50) NULL ,
[column_length] int NULL ,
[description] nvarchar(255) NULL ,
[field_name] nvarchar(50) NULL ,
[field_type] nvarchar(50) NULL ,
[nullable] varchar(1) NULL ,
[relation_table] nvarchar(50) NULL ,
[relation_column_id] nvarchar(50) NULL ,
[relation_column_text] nvarchar(50) NULL ,
[sort] nvarchar(50) NULL ,
[is_key] varchar(1) NULL ,
[show_type] nvarchar(50) NULL ,
[is_query] varchar(1) NULL ,
[query_mode] nvarchar(50) NULL ,
[query_type] nvarchar(50) NULL ,
[is_show_list] varchar(1) NULL ,
[is_show_form] varchar(1) NULL ,
[form_valid_type] nvarchar(100) NULL ,
[order_no] int NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'table_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'table_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'table_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'column_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'列名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'column_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'列名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'column_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'column_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'列类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'column_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'列类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'column_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'column_length')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'列长度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'column_length'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'列长度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'column_length'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'field_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'字段名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'field_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'字段名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'field_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'field_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'字段类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'field_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'字段类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'field_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'nullable')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否为空'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'nullable'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否为空'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'nullable'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'relation_table')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'关联表名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'relation_table'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'关联表名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'relation_table'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'relation_column_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'关联表关联ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'relation_column_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'关联表关联ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'relation_column_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'relation_column_text')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'关联表显示字段'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'relation_column_text'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'关联表显示字段'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'relation_column_text'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'sort')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'sort'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'sort'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'is_key')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'is_key'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'is_key'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'show_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'页面显示类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'show_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'页面显示类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'show_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'is_query')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否查询'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'is_query'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否查询'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'is_query'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'query_mode')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'查询模式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'query_mode'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'查询模式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'query_mode'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'query_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'查询类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'query_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'查询类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'query_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'is_show_list')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'列表是否显示'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'is_show_list'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'列表是否显示'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'is_show_list'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'is_show_form')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'表单是否显示'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'is_show_form'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'表单是否显示'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'is_show_form'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'form_valid_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'表单验证类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'form_valid_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'表单验证类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'form_valid_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_column_config', 
'COLUMN', N'order_no')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'字段顺序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'order_no'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'字段顺序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_column_config'
, @level2type = 'COLUMN', @level2name = N'order_no'
GO

-- ----------------------------
-- Records of cg_column_config
-- ----------------------------
INSERT INTO [dbo].[cg_column_config] ([id], [table_id], [column_name], [column_type], [column_length], [description], [field_name], [field_type], [nullable], [relation_table], [relation_column_id], [relation_column_text], [sort], [is_key], [show_type], [is_query], [query_mode], [query_type], [is_show_list], [is_show_form], [form_valid_type], [order_no]) VALUES (N'08c9a223a59341f189aed924287c0f6e', N'c724d5cd215e40e392bce5f6c0b33e80', N'age', N'int', N'10', N'年龄', N'age', N'Integer', N'Y', null, null, null, N'N', N'N', N'text', N'N', N'single', N'=', N'Y', N'Y', N'', N'3')
GO
GO
INSERT INTO [dbo].[cg_column_config] ([id], [table_id], [column_name], [column_type], [column_length], [description], [field_name], [field_type], [nullable], [relation_table], [relation_column_id], [relation_column_text], [sort], [is_key], [show_type], [is_query], [query_mode], [query_type], [is_show_list], [is_show_form], [form_valid_type], [order_no]) VALUES (N'0ea1619cafb34b80a38cad8b134f4152', N'c724d5cd215e40e392bce5f6c0b33e80', N'dept_id', N'varchar', N'32', N'部门', N'deptId', N'String', N'Y', null, null, null, N'N', N'N', N'select', N'N', N'single', N'=', N'Y', N'Y', N'', N'5')
GO
GO
INSERT INTO [dbo].[cg_column_config] ([id], [table_id], [column_name], [column_type], [column_length], [description], [field_name], [field_type], [nullable], [relation_table], [relation_column_id], [relation_column_text], [sort], [is_key], [show_type], [is_query], [query_mode], [query_type], [is_show_list], [is_show_form], [form_valid_type], [order_no]) VALUES (N'34c5b5fe557d49aaba41bb3fd516033b', N'c724d5cd215e40e392bce5f6c0b33e80', N'remark', N'text', N'65535', N'描述', N'remark', N'String', N'Y', null, null, null, N'N', N'N', N'textarea', N'N', N'single', N'=', N'N', N'Y', N'', N'8')
GO
GO
INSERT INTO [dbo].[cg_column_config] ([id], [table_id], [column_name], [column_type], [column_length], [description], [field_name], [field_type], [nullable], [relation_table], [relation_column_id], [relation_column_text], [sort], [is_key], [show_type], [is_query], [query_mode], [query_type], [is_show_list], [is_show_form], [form_valid_type], [order_no]) VALUES (N'4fc64ad7f6c049beb7ce8bc3139f3f27', N'c724d5cd215e40e392bce5f6c0b33e80', N'sex', N'char', N'1', N'性别', N'sex', N'String', N'Y', null, null, null, N'N', N'N', N'radio', N'N', N'single', N'=', N'Y', N'Y', N'', N'6')
GO
GO
INSERT INTO [dbo].[cg_column_config] ([id], [table_id], [column_name], [column_type], [column_length], [description], [field_name], [field_type], [nullable], [relation_table], [relation_column_id], [relation_column_text], [sort], [is_key], [show_type], [is_query], [query_mode], [query_type], [is_show_list], [is_show_form], [form_valid_type], [order_no]) VALUES (N'7900e90c0436477bba51e7791f499b77', N'c724d5cd215e40e392bce5f6c0b33e80', N'birthday', N'datetime', N'0', N'出生日期', N'birthday', N'Date', N'Y', null, null, null, N'N', N'N', N'date', N'Y', N'group', N'=', N'Y', N'Y', N'', N'4')
GO
GO
INSERT INTO [dbo].[cg_column_config] ([id], [table_id], [column_name], [column_type], [column_length], [description], [field_name], [field_type], [nullable], [relation_table], [relation_column_id], [relation_column_text], [sort], [is_key], [show_type], [is_query], [query_mode], [query_type], [is_show_list], [is_show_form], [form_valid_type], [order_no]) VALUES (N'8fd0227add8b420c87ad4a6b8efa7e92', N'c724d5cd215e40e392bce5f6c0b33e80', N'name', N'varchar', N'100', N'名称', N'name', N'String', N'Y', null, null, null, N'N', N'N', N'text', N'Y', N'single', N'like', N'Y', N'Y', N'required', N'2')
GO
GO
INSERT INTO [dbo].[cg_column_config] ([id], [table_id], [column_name], [column_type], [column_length], [description], [field_name], [field_type], [nullable], [relation_table], [relation_column_id], [relation_column_text], [sort], [is_key], [show_type], [is_query], [query_mode], [query_type], [is_show_list], [is_show_form], [form_valid_type], [order_no]) VALUES (N'ad7037f2ea97485098773b1767e6bd9c', N'c724d5cd215e40e392bce5f6c0b33e80', N'demo_id', N'varchar', N'32', N'主鍵', N'demoId', N'String', N'N', null, null, null, N'N', N'Y', N'text', N'N', N'single', N'=', N'N', N'N', N'', N'1')
GO
GO
INSERT INTO [dbo].[cg_column_config] ([id], [table_id], [column_name], [column_type], [column_length], [description], [field_name], [field_type], [nullable], [relation_table], [relation_column_id], [relation_column_text], [sort], [is_key], [show_type], [is_query], [query_mode], [query_type], [is_show_list], [is_show_form], [form_valid_type], [order_no]) VALUES (N'beb5e55a3cdd47348371c57b7d973972', N'c724d5cd215e40e392bce5f6c0b33e80', N'hobby', N'varchar', N'100', N'爱好', N'hobby', N'String', N'Y', null, null, null, N'N', N'N', N'checkbox', N'N', N'single', N'=', N'Y', N'Y', N'', N'7')
GO
GO

-- ----------------------------
-- Table structure for cg_data_source
-- ----------------------------
DROP TABLE [dbo].[cg_data_source]
GO
CREATE TABLE [dbo].[cg_data_source] (
[id] varchar(32) NOT NULL ,
[description] nvarchar(255) NULL ,
[db_type] nvarchar(50) NULL ,
[db_name] nvarchar(50) NULL ,
[server] nvarchar(50) NULL ,
[port] nvarchar(10) NULL ,
[username] nvarchar(50) NULL ,
[password] nvarchar(50) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_data_source', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_data_source'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_data_source'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_data_source', 
'COLUMN', N'description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_data_source'
, @level2type = 'COLUMN', @level2name = N'description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_data_source'
, @level2type = 'COLUMN', @level2name = N'description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_data_source', 
'COLUMN', N'db_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'数据库类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_data_source'
, @level2type = 'COLUMN', @level2name = N'db_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'数据库类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_data_source'
, @level2type = 'COLUMN', @level2name = N'db_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_data_source', 
'COLUMN', N'db_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'数据库名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_data_source'
, @level2type = 'COLUMN', @level2name = N'db_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'数据库名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_data_source'
, @level2type = 'COLUMN', @level2name = N'db_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_data_source', 
'COLUMN', N'server')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'服务器IP'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_data_source'
, @level2type = 'COLUMN', @level2name = N'server'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'服务器IP'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_data_source'
, @level2type = 'COLUMN', @level2name = N'server'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_data_source', 
'COLUMN', N'port')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'端口号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_data_source'
, @level2type = 'COLUMN', @level2name = N'port'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'端口号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_data_source'
, @level2type = 'COLUMN', @level2name = N'port'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_data_source', 
'COLUMN', N'username')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_data_source'
, @level2type = 'COLUMN', @level2name = N'username'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_data_source'
, @level2type = 'COLUMN', @level2name = N'username'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_data_source', 
'COLUMN', N'password')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_data_source'
, @level2type = 'COLUMN', @level2name = N'password'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_data_source'
, @level2type = 'COLUMN', @level2name = N'password'
GO

-- ----------------------------
-- Records of cg_data_source
-- ----------------------------
INSERT INTO [dbo].[cg_data_source] ([id], [description], [db_type], [db_name], [server], [port], [username], [password]) VALUES (N'37039a75098c4e7eb4020f5b29e46d9a', N'当前数据库', N'mysql', N'jeeidp', N'localhost', N'3306', N'root', N'123456')
GO
GO

-- ----------------------------
-- Table structure for cg_table_config
-- ----------------------------
DROP TABLE [dbo].[cg_table_config]
GO
CREATE TABLE [dbo].[cg_table_config] (
[id] varchar(32) NOT NULL ,
[table_name] nvarchar(50) NULL ,
[entity_name] nvarchar(50) NULL ,
[description] nvarchar(255) NULL ,
[is_checkbox] varchar(1) NULL ,
[is_page] varchar(1) NULL ,
[is_tree] varchar(1) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_table_config', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_table_config'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_table_config'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_table_config', 
'COLUMN', N'table_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'表名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_table_config'
, @level2type = 'COLUMN', @level2name = N'table_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'表名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_table_config'
, @level2type = 'COLUMN', @level2name = N'table_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_table_config', 
'COLUMN', N'entity_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'类名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_table_config'
, @level2type = 'COLUMN', @level2name = N'entity_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'类名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_table_config'
, @level2type = 'COLUMN', @level2name = N'entity_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_table_config', 
'COLUMN', N'description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_table_config'
, @level2type = 'COLUMN', @level2name = N'description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_table_config'
, @level2type = 'COLUMN', @level2name = N'description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_table_config', 
'COLUMN', N'is_checkbox')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否多选框'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_table_config'
, @level2type = 'COLUMN', @level2name = N'is_checkbox'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否多选框'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_table_config'
, @level2type = 'COLUMN', @level2name = N'is_checkbox'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_table_config', 
'COLUMN', N'is_page')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否分页'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_table_config'
, @level2type = 'COLUMN', @level2name = N'is_page'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否分页'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_table_config'
, @level2type = 'COLUMN', @level2name = N'is_page'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'cg_table_config', 
'COLUMN', N'is_tree')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否树'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_table_config'
, @level2type = 'COLUMN', @level2name = N'is_tree'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否树'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'cg_table_config'
, @level2type = 'COLUMN', @level2name = N'is_tree'
GO

-- ----------------------------
-- Records of cg_table_config
-- ----------------------------
INSERT INTO [dbo].[cg_table_config] ([id], [table_name], [entity_name], [description], [is_checkbox], [is_page], [is_tree]) VALUES (N'c724d5cd215e40e392bce5f6c0b33e80', N'demo_test', N'DemoTest', N'測試功能', N'Y', N'Y', null)
GO
GO

-- ----------------------------
-- Table structure for demo_test
-- ----------------------------
DROP TABLE [dbo].[demo_test]
GO
CREATE TABLE [dbo].[demo_test] (
[demo_id] varchar(32) NOT NULL ,
[name] nvarchar(100) NULL ,
[age] int NULL ,
[birthday] datetime NULL ,
[dept_id] varchar(32) NULL ,
[sex] varchar(1) NULL ,
[hobby] nvarchar(100) NULL ,
[remark] nvarchar(MAX) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'demo_test', 
'COLUMN', N'demo_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'demo_test'
, @level2type = 'COLUMN', @level2name = N'demo_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'demo_test'
, @level2type = 'COLUMN', @level2name = N'demo_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'demo_test', 
'COLUMN', N'name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'demo_test'
, @level2type = 'COLUMN', @level2name = N'name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'demo_test'
, @level2type = 'COLUMN', @level2name = N'name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'demo_test', 
'COLUMN', N'age')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'年龄'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'demo_test'
, @level2type = 'COLUMN', @level2name = N'age'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'年龄'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'demo_test'
, @level2type = 'COLUMN', @level2name = N'age'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'demo_test', 
'COLUMN', N'birthday')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'出生日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'demo_test'
, @level2type = 'COLUMN', @level2name = N'birthday'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'出生日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'demo_test'
, @level2type = 'COLUMN', @level2name = N'birthday'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'demo_test', 
'COLUMN', N'dept_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'部门'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'demo_test'
, @level2type = 'COLUMN', @level2name = N'dept_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'部门'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'demo_test'
, @level2type = 'COLUMN', @level2name = N'dept_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'demo_test', 
'COLUMN', N'sex')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'性别'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'demo_test'
, @level2type = 'COLUMN', @level2name = N'sex'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'性别'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'demo_test'
, @level2type = 'COLUMN', @level2name = N'sex'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'demo_test', 
'COLUMN', N'hobby')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'爱好'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'demo_test'
, @level2type = 'COLUMN', @level2name = N'hobby'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'爱好'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'demo_test'
, @level2type = 'COLUMN', @level2name = N'hobby'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'demo_test', 
'COLUMN', N'remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'demo_test'
, @level2type = 'COLUMN', @level2name = N'remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'demo_test'
, @level2type = 'COLUMN', @level2name = N'remark'
GO

-- ----------------------------
-- Records of demo_test
-- ----------------------------
INSERT INTO [dbo].[demo_test] ([demo_id], [name], [age], [birthday], [dept_id], [sex], [hobby], [remark]) VALUES (N'9de57040b5604d06af5b24b5cf931324', N'22', N'22', N'2017-01-19 00:00:00.000', N'1', N'1', null, N'22')
GO
GO

-- ----------------------------
-- Table structure for sys_dictionary
-- ----------------------------
DROP TABLE [dbo].[sys_dictionary]
GO
CREATE TABLE [dbo].[sys_dictionary] (
[id] varchar(32) NOT NULL ,
[code] nvarchar(50) NULL ,
[name] nvarchar(50) NULL ,
[group_id] varchar(32) NULL ,
[sort] int NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dictionary', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dictionary'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dictionary'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dictionary', 
'COLUMN', N'code')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dictionary'
, @level2type = 'COLUMN', @level2name = N'code'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dictionary'
, @level2type = 'COLUMN', @level2name = N'code'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dictionary', 
'COLUMN', N'name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dictionary'
, @level2type = 'COLUMN', @level2name = N'name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dictionary'
, @level2type = 'COLUMN', @level2name = N'name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dictionary', 
'COLUMN', N'group_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'分组id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dictionary'
, @level2type = 'COLUMN', @level2name = N'group_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'分组id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dictionary'
, @level2type = 'COLUMN', @level2name = N'group_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dictionary', 
'COLUMN', N'sort')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dictionary'
, @level2type = 'COLUMN', @level2name = N'sort'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dictionary'
, @level2type = 'COLUMN', @level2name = N'sort'
GO

-- ----------------------------
-- Records of sys_dictionary
-- ----------------------------
INSERT INTO [dbo].[sys_dictionary] ([id], [code], [name], [group_id], [sort]) VALUES (N'1ae964f767bb48089e6287e36d159754', N'1', N'男', N'9', N'1')
GO
GO
INSERT INTO [dbo].[sys_dictionary] ([id], [code], [name], [group_id], [sort]) VALUES (N'443f5d7521344993bb71b37f1376a521', N'0', N'女', N'9', N'2')
GO
GO
INSERT INTO [dbo].[sys_dictionary] ([id], [code], [name], [group_id], [sort]) VALUES (N'9', N'sex', N'性别', null, null)
GO
GO

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE [dbo].[sys_log]
GO
CREATE TABLE [dbo].[sys_log] (
[id] varchar(32) NOT NULL ,
[log_type] nvarchar(20) NULL ,
[log_title] nvarchar(255) NULL ,
[log_content] nvarchar(MAX) NULL ,
[operate_user] nvarchar(32) NULL ,
[operate_ip] nvarchar(20) NULL ,
[operate_date] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_log', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_log'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_log'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_log', 
'COLUMN', N'log_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'日志类型(1:功能信息,2:功能异常,3:定时任务异常)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_log'
, @level2type = 'COLUMN', @level2name = N'log_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'日志类型(1:功能信息,2:功能异常,3:定时任务异常)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_log'
, @level2type = 'COLUMN', @level2name = N'log_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_log', 
'COLUMN', N'log_title')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'日志标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_log'
, @level2type = 'COLUMN', @level2name = N'log_title'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'日志标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_log'
, @level2type = 'COLUMN', @level2name = N'log_title'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_log', 
'COLUMN', N'log_content')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'日志内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_log'
, @level2type = 'COLUMN', @level2name = N'log_content'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'日志内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_log'
, @level2type = 'COLUMN', @level2name = N'log_content'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_log', 
'COLUMN', N'operate_user')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_log'
, @level2type = 'COLUMN', @level2name = N'operate_user'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_log'
, @level2type = 'COLUMN', @level2name = N'operate_user'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_log', 
'COLUMN', N'operate_ip')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作IP'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_log'
, @level2type = 'COLUMN', @level2name = N'operate_ip'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作IP'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_log'
, @level2type = 'COLUMN', @level2name = N'operate_ip'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_log', 
'COLUMN', N'operate_date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_log'
, @level2type = 'COLUMN', @level2name = N'operate_date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_log'
, @level2type = 'COLUMN', @level2name = N'operate_date'
GO

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE [dbo].[sys_menu]
GO
CREATE TABLE [dbo].[sys_menu] (
[id] varchar(32) NOT NULL ,
[menu_name] nvarchar(200) NULL ,
[menu_url] nvarchar(200) NULL ,
[menu_icon] nvarchar(100) NULL ,
[parent_id] varchar(32) NULL ,
[sort] int NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'menu_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'菜单名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'menu_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'菜单名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'menu_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'menu_url')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'菜单路径'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'menu_url'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'菜单路径'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'menu_url'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'menu_icon')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'菜单图标'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'menu_icon'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'菜单图标'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'menu_icon'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'parent_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'父级菜单ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'parent_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'父级菜单ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'parent_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'sort')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'sort'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'sort'
GO

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO [dbo].[sys_menu] ([id], [menu_name], [menu_url], [menu_icon], [parent_id], [sort]) VALUES (N'01', N'系统管理', N'', N'glyphicon glyphicon-cog', N'0', N'2')
GO
GO
INSERT INTO [dbo].[sys_menu] ([id], [menu_name], [menu_url], [menu_icon], [parent_id], [sort]) VALUES (N'0101', N'用户管理', N'/sysUser/init', N'glyphicon glyphicon-user', N'01', N'1')
GO
GO
INSERT INTO [dbo].[sys_menu] ([id], [menu_name], [menu_url], [menu_icon], [parent_id], [sort]) VALUES (N'0102', N'角色管理', N'/sysRole/init', N'glyphicon glyphicon-th-list', N'01', N'2')
GO
GO
INSERT INTO [dbo].[sys_menu] ([id], [menu_name], [menu_url], [menu_icon], [parent_id], [sort]) VALUES (N'0103', N'菜单管理', N'/sysMenu/init', N'glyphicon glyphicon-list-alt', N'01', N'3')
GO
GO
INSERT INTO [dbo].[sys_menu] ([id], [menu_name], [menu_url], [menu_icon], [parent_id], [sort]) VALUES (N'0104', N'组织管理', N'/sysOrg/init', N'glyphicon glyphicon-th-large', N'01', N'4')
GO
GO
INSERT INTO [dbo].[sys_menu] ([id], [menu_name], [menu_url], [menu_icon], [parent_id], [sort]) VALUES (N'0105', N'数据字典', N'/sysDictionary/init', N'glyphicon glyphicon-book', N'01', N'5')
GO
GO
INSERT INTO [dbo].[sys_menu] ([id], [menu_name], [menu_url], [menu_icon], [parent_id], [sort]) VALUES (N'02', N'代码生成器', N'', N'glyphicon glyphicon-send', N'0', N'2')
GO
GO
INSERT INTO [dbo].[sys_menu] ([id], [menu_name], [menu_url], [menu_icon], [parent_id], [sort]) VALUES (N'0201', N'数据源', N'/dataSource/init', N'glyphicon glyphicon-send', N'02', N'1')
GO
GO
INSERT INTO [dbo].[sys_menu] ([id], [menu_name], [menu_url], [menu_icon], [parent_id], [sort]) VALUES (N'0202', N'表配置', N'/tableConfig/init', N'glyphicon glyphicon-send', N'02', N'2')
GO
GO
INSERT INTO [dbo].[sys_menu] ([id], [menu_name], [menu_url], [menu_icon], [parent_id], [sort]) VALUES (N'03', N'代码生成测试', N'', N'glyphicon glyphicon-send', N'0', N'3')
GO
GO
INSERT INTO [dbo].[sys_menu] ([id], [menu_name], [menu_url], [menu_icon], [parent_id], [sort]) VALUES (N'0301', N'测试功能', N'/demoTest/init', N'glyphicon glyphicon-send', N'03', N'1')
GO
GO
INSERT INTO [dbo].[sys_menu] ([id], [menu_name], [menu_url], [menu_icon], [parent_id], [sort]) VALUES (N'1157f08857e0408aa0fab8bfa4e0704a', N'定时任务', N'/sysScheduler/init', N'', N'01', N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([id], [menu_name], [menu_url], [menu_icon], [parent_id], [sort]) VALUES (N'90cec4b2aa924ebba889fc18be307672', N'系统日志', N'/sysLog/init', N'', N'01', N'7')
GO
GO

-- ----------------------------
-- Table structure for sys_org
-- ----------------------------
DROP TABLE [dbo].[sys_org]
GO
CREATE TABLE [dbo].[sys_org] (
[id] varchar(32) NOT NULL ,
[org_code] nvarchar(50) NULL ,
[org_name] nvarchar(50) NULL ,
[description] nvarchar(255) NULL ,
[parent_id] varchar(32) NULL ,
[create_user] varchar(32) NULL ,
[create_date] datetime NULL ,
[update_user] varchar(32) NULL ,
[update_date] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_org', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_org'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_org'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_org', 
'COLUMN', N'org_code')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'组织编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_org'
, @level2type = 'COLUMN', @level2name = N'org_code'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'组织编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_org'
, @level2type = 'COLUMN', @level2name = N'org_code'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_org', 
'COLUMN', N'org_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'组织名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_org'
, @level2type = 'COLUMN', @level2name = N'org_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'组织名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_org'
, @level2type = 'COLUMN', @level2name = N'org_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_org', 
'COLUMN', N'description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_org'
, @level2type = 'COLUMN', @level2name = N'description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_org'
, @level2type = 'COLUMN', @level2name = N'description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_org', 
'COLUMN', N'parent_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'父级菜单ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_org'
, @level2type = 'COLUMN', @level2name = N'parent_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'父级菜单ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_org'
, @level2type = 'COLUMN', @level2name = N'parent_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_org', 
'COLUMN', N'create_user')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_org'
, @level2type = 'COLUMN', @level2name = N'create_user'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_org'
, @level2type = 'COLUMN', @level2name = N'create_user'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_org', 
'COLUMN', N'create_date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_org'
, @level2type = 'COLUMN', @level2name = N'create_date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_org'
, @level2type = 'COLUMN', @level2name = N'create_date'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_org', 
'COLUMN', N'update_user')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_org'
, @level2type = 'COLUMN', @level2name = N'update_user'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_org'
, @level2type = 'COLUMN', @level2name = N'update_user'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_org', 
'COLUMN', N'update_date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_org'
, @level2type = 'COLUMN', @level2name = N'update_date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_org'
, @level2type = 'COLUMN', @level2name = N'update_date'
GO

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO [dbo].[sys_org] ([id], [org_code], [org_name], [description], [parent_id], [create_user], [create_date], [update_user], [update_date]) VALUES (N'1', N'001', N'济南分公司', N'济南', N'0', null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_org] ([id], [org_code], [org_name], [description], [parent_id], [create_user], [create_date], [update_user], [update_date]) VALUES (N'2', N'002', N'北京分公司', N'北京', N'0', null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_org] ([id], [org_code], [org_name], [description], [parent_id], [create_user], [create_date], [update_user], [update_date]) VALUES (N'3', N'003', N'上海分公司', N'上海', N'0', null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_org] ([id], [org_code], [org_name], [description], [parent_id], [create_user], [create_date], [update_user], [update_date]) VALUES (N'4', N'001001', N'行政部', N'行政', N'1', null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_org] ([id], [org_code], [org_name], [description], [parent_id], [create_user], [create_date], [update_user], [update_date]) VALUES (N'5', N'001002', N'技术部', N'技术', N'1', null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_org] ([id], [org_code], [org_name], [description], [parent_id], [create_user], [create_date], [update_user], [update_date]) VALUES (N'6', N'003002', N'人事部', N'人事', N'3', null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_org] ([id], [org_code], [org_name], [description], [parent_id], [create_user], [create_date], [update_user], [update_date]) VALUES (N'7', N'003001', N'行政部', N'行政', N'3', null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_org] ([id], [org_code], [org_name], [description], [parent_id], [create_user], [create_date], [update_user], [update_date]) VALUES (N'8', N'005', N'杭州分公司', N'', N'0', null, null, null, null)
GO
GO

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE [dbo].[sys_role]
GO
CREATE TABLE [dbo].[sys_role] (
[id] varchar(32) NOT NULL ,
[role_code] nvarchar(50) NULL ,
[role_name] nvarchar(50) NULL ,
[description] nvarchar(255) NULL ,
[create_user] varchar(32) NULL ,
[create_date] datetime NULL ,
[update_user] varchar(32) NULL ,
[update_date] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'role_code')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'role_code'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'role_code'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'role_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'role_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'role_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'create_user')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'create_user'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'create_user'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'create_date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'create_date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'create_date'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'update_user')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'update_user'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'update_user'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'update_date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'update_date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'update_date'
GO

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO [dbo].[sys_role] ([id], [role_code], [role_name], [description], [create_user], [create_date], [update_user], [update_date]) VALUES (N'1', N'001', N'系统管理员', N'所有权限', null, null, null, null)
GO
GO

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE [dbo].[sys_role_menu]
GO
CREATE TABLE [dbo].[sys_role_menu] (
[id] varchar(32) NOT NULL ,
[role_id] varchar(32) NULL ,
[menu_id] varchar(32) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role_menu', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role_menu'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role_menu'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role_menu', 
'COLUMN', N'role_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role_menu'
, @level2type = 'COLUMN', @level2name = N'role_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role_menu'
, @level2type = 'COLUMN', @level2name = N'role_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role_menu', 
'COLUMN', N'menu_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'菜单ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role_menu'
, @level2type = 'COLUMN', @level2name = N'menu_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'菜单ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role_menu'
, @level2type = 'COLUMN', @level2name = N'menu_id'
GO

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (N'2176f52e18f344af9d0d07a1cdee1e26', N'1', N'0201')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (N'4e78bde3d40a451194462a0cf5ce0e25', N'1', N'03')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (N'62e358e55d974c999d77deab51dbec00', N'1', N'01')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (N'8d0ad56a62c2493a9736281b9bb37648', N'1', N'0301')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (N'9b916e9ad5a24835a8b76f86c7e9e34c', N'1', N'02')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (N'9d2609fda84448b4bf25d07fec194a56', N'1', N'0101')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (N'a948506cbf2f4998b83024a58af9dd86', N'1', N'90cec4b2aa924ebba889fc18be307672')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (N'b16353d8503f436dab9c149565d3a582', N'1', N'0103')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (N'b90e5317a77d47bd896556f7e3327739', N'1', N'0102')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (N'bff55c23f2ad43e1bfadb08df4947c38', N'1', N'0104')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (N'caabc45221fc4160a4b2a7fef111abfc', N'1', N'1157f08857e0408aa0fab8bfa4e0704a')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (N'e3027cb22ac145b9aec4f09dbff72d4e', N'1', N'0202')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [role_id], [menu_id]) VALUES (N'ea25a71e7db84820960c9258ac49a79b', N'1', N'0105')
GO
GO

-- ----------------------------
-- Table structure for sys_scheduler
-- ----------------------------
DROP TABLE [dbo].[sys_scheduler]
GO
CREATE TABLE [dbo].[sys_scheduler] (
[id] varchar(32) NOT NULL ,
[job_name] nvarchar(255) NULL ,
[job_group] nvarchar(255) NULL ,
[job_state] nvarchar(1) NULL ,
[job_class] nvarchar(255) NULL ,
[cron] nvarchar(255) NULL ,
[description] nvarchar(255) NULL ,
[start_time] datetime NULL ,
[end_time] datetime NULL ,
[enabled] nvarchar(1) NULL ,
[create_user] varchar(32) NULL ,
[create_date] datetime NULL ,
[update_user] varchar(32) NULL ,
[update_date] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_scheduler', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_scheduler', 
'COLUMN', N'job_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'任务名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'job_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'任务名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'job_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_scheduler', 
'COLUMN', N'job_group')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'任务分组'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'job_group'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'任务分组'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'job_group'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_scheduler', 
'COLUMN', N'job_state')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'任务状态(1:成功,2:失败)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'job_state'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'任务状态(1:成功,2:失败)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'job_state'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_scheduler', 
'COLUMN', N'job_class')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'任务执行类'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'job_class'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'任务执行类'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'job_class'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_scheduler', 
'COLUMN', N'cron')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'cron表达式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'cron'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'cron表达式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'cron'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_scheduler', 
'COLUMN', N'description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_scheduler', 
'COLUMN', N'start_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'开始时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'start_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'开始时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'start_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_scheduler', 
'COLUMN', N'end_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'结束时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'end_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'结束时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'end_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_scheduler', 
'COLUMN', N'enabled')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否启用(Y/N)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'enabled'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否启用(Y/N)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'enabled'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_scheduler', 
'COLUMN', N'create_user')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'create_user'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'create_user'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_scheduler', 
'COLUMN', N'create_date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'create_date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'create_date'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_scheduler', 
'COLUMN', N'update_user')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'update_user'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'update_user'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_scheduler', 
'COLUMN', N'update_date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'update_date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_scheduler'
, @level2type = 'COLUMN', @level2name = N'update_date'
GO

-- ----------------------------
-- Records of sys_scheduler
-- ----------------------------
INSERT INTO [dbo].[sys_scheduler] ([id], [job_name], [job_group], [job_state], [job_class], [cron], [description], [start_time], [end_time], [enabled], [create_user], [create_date], [update_user], [update_date]) VALUES (N'21aa9b488ae24db7b2d531aaa78c67c7', N'測試排程2', N'demo', N'1', N'com.idp.scheduler.quartz.TestJob2', N'0 0/10 * * * ?', N'每10分钟执行一次', N'2018-07-06 16:50:00.000', N'2018-07-06 16:50:00.000', N'N', null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_scheduler] ([id], [job_name], [job_group], [job_state], [job_class], [cron], [description], [start_time], [end_time], [enabled], [create_user], [create_date], [update_user], [update_date]) VALUES (N'5b03cde6858a4dd1bfed3f7ba5cf2497', N'測試排程1', N'demo', N'1', N'com.idp.scheduler.quartz.TestJob1', N'0 0/5 * * * ?', N'每5分钟执行一次', N'2018-07-06 16:55:00.000', N'2018-07-06 16:55:00.000', N'N', null, null, null, null)
GO
GO

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE [dbo].[sys_user]
GO
CREATE TABLE [dbo].[sys_user] (
[id] varchar(32) NOT NULL ,
[username] nvarchar(50) NULL ,
[password] nvarchar(50) NULL ,
[name] nvarchar(50) NULL ,
[org_id] varchar(32) NULL ,
[birthday] datetime NULL ,
[phone] nvarchar(11) NULL ,
[email] nvarchar(50) NULL ,
[description] nvarchar(255) NULL ,
[user_photo] nvarchar(255) NULL ,
[del_flag] varchar(1) NULL ,
[create_user] varchar(32) NULL ,
[create_date] datetime NULL ,
[update_user] varchar(32) NULL ,
[update_date] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'username')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'username'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'username'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'password')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'password'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'password'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'org_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'组织'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'org_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'组织'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'org_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'birthday')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'出生日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'birthday'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'出生日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'birthday'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'phone')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电话'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'phone'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电话'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'phone'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'email')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'邮箱'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'email'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'邮箱'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'email'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'user_photo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户头像'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'user_photo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户头像'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'user_photo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'del_flag')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'删除标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'del_flag'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'删除标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'del_flag'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'create_user')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'create_user'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'create_user'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'create_date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'create_date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'create_date'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'update_user')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'update_user'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'update_user'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'update_date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'update_date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'update_date'
GO

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO [dbo].[sys_user] ([id], [username], [password], [name], [org_id], [birthday], [phone], [email], [description], [user_photo], [del_flag], [create_user], [create_date], [update_user], [update_date]) VALUES (N'1', N'admin', N'E10ADC3949BA59ABBE56E057F20F883E', N'管理员', N'5', N'2018-05-07 00:00:00.000', N'15912341234', N'564396248@qq.com', N'系统管理员-king', N'20180426/201804260954277805b59bc8d746589a9bc9358aea2537.jpg', N'0', null, null, null, null)
GO
GO

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE [dbo].[sys_user_role]
GO
CREATE TABLE [dbo].[sys_user_role] (
[id] varchar(32) NOT NULL ,
[user_id] varchar(32) NULL ,
[role_id] varchar(32) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_role', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_role'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_role'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_role', 
'COLUMN', N'user_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_role'
, @level2type = 'COLUMN', @level2name = N'user_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_role'
, @level2type = 'COLUMN', @level2name = N'user_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_role', 
'COLUMN', N'role_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_role'
, @level2type = 'COLUMN', @level2name = N'role_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_role'
, @level2type = 'COLUMN', @level2name = N'role_id'
GO

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (N'4b44b52772234c65b8422406e3bbf078', N'1', N'1')
GO
GO

-- ----------------------------
-- Indexes structure for table cg_column_config
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table cg_column_config
-- ----------------------------
ALTER TABLE [dbo].[cg_column_config] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table cg_data_source
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table cg_data_source
-- ----------------------------
ALTER TABLE [dbo].[cg_data_source] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table cg_table_config
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table cg_table_config
-- ----------------------------
ALTER TABLE [dbo].[cg_table_config] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table demo_test
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table demo_test
-- ----------------------------
ALTER TABLE [dbo].[demo_test] ADD PRIMARY KEY ([demo_id])
GO

-- ----------------------------
-- Indexes structure for table sys_dictionary
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_dictionary
-- ----------------------------
ALTER TABLE [dbo].[sys_dictionary] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table sys_log
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_log
-- ----------------------------
ALTER TABLE [dbo].[sys_log] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table sys_menu
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE [dbo].[sys_menu] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table sys_org
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_org
-- ----------------------------
ALTER TABLE [dbo].[sys_org] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table sys_role
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE [dbo].[sys_role] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table sys_role_menu
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_role_menu
-- ----------------------------
ALTER TABLE [dbo].[sys_role_menu] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table sys_scheduler
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_scheduler
-- ----------------------------
ALTER TABLE [dbo].[sys_scheduler] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table sys_user
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE [dbo].[sys_user] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table sys_user_role
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE [dbo].[sys_user_role] ADD PRIMARY KEY ([id])
GO
