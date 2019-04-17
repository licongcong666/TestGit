package com.idp.biz.system.entity;
import java.io.Serializable;

import com.idp.common.base.BaseEntity;

/**
 * 角色管理实体类
 * 
 * @author King
 *
 */
public class SysRole extends BaseEntity implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	/**角色编码*/
	private String roleCode;
	/**角色名称*/
	private String roleName;
	/**备注*/
	private String description;
	
	/** 用户是否有此角色权限 */
	private boolean userHas;
	/** 菜单ID,逗号分隔 */
	private String menuIds;
	
	/**
	 *方法: 取得String
	 *@return: String  角色编码
	 */
	public String getRoleCode(){
		return this.roleCode;
	}

	/**
	 *方法: 设置String
	 *@param: String  角色编码
	 */
	public void setRoleCode(String roleCode){
		this.roleCode = roleCode;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  角色名称
	 */
	public String getRoleName(){
		return this.roleName;
	}

	/**
	 *方法: 设置String
	 *@param: String  角色名称
	 */
	public void setRoleName(String roleName){
		this.roleName = roleName;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  备注
	 */
	public String getDescription(){
		return this.description;
	}

	/**
	 *方法: 设置String
	 *@param: String  备注
	 */
	public void setDescription(String description){
		this.description = description;
	}

	
	public boolean isUserHas() {
		return userHas;
	}

	public void setUserHas(boolean userHas) {
		this.userHas = userHas;
	}

	public String getMenuIds() {
		return menuIds;
	}

	public void setMenuIds(String menuIds) {
		this.menuIds = menuIds;
	}

	@Override
	public String toString() {
		return "角色管理：[角色编码=" + roleCode + ", 角色名称=" + roleName + ", 备注=" + description + "]";
	}
	
}
