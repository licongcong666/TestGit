package com.idp.common.constant;

/**
 * 系统提示信息
 * 
 * @author King
 *
 */
public class SysMessage {

	public static final String COMMON_SAVE_SUCCESS 		= "保存成功";
	public static final String COMMON_ADD_SUCCESS 		= "新增成功";
	public static final String COMMON_UPDATE_SUCCESS 	= "修改成功";
	public static final String COMMON_DELETE_SUCCESS 	= "删除成功";
	public static final String COMMON_EXPORT_SUCCESS 	= "导出成功";
	public static final String COMMON_OPERATE_FAIL 		= "操作失败";
	
	public static final String LOGIN_SUCCESS			= "登录成功";
	public static final String LOGIN_USER_INFO_ERROR	= "用户名或密码错误";
	public static final String LOGIN_USER_NOT_EXIST		= "用户不存在";
	public static final String LOGIN_USER_LOCKED		= "用户已锁定";
	
	public static final String USER_PWD_RESET_SUCCESS	= "密码重置成功";
	public static final String USER_PWD_UPDATE_SUCCESS	= "密码修改成功";
	public static final String USER_OLDPWD_DIFFERENCE	= "原密码不一致";
	public static final String ROLE_HAS_USED_BY_USER	= "当前角色已被用户使用，暂无法删除";
	
	public static final String SCHEDULER_CRON_ERROR			= "cron表达式错误";
	public static final String SCHEDULER_JOB_RUNING			= "该定时任务正在运行，暂不能修改";
	public static final String SCHEDULER_CLASS_NOT_EXIST	= "执行类不存在";
	public static final String SCHEDULER_ENABLE_OK			= "启用成功";
	public static final String SCHEDULER_DISABLED_OK			= "禁用成功";
	
}