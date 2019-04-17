package com.idp.biz.system.entity;
import java.io.Serializable;

import com.idp.common.base.BaseEntity;

/**
 * 角色菜单实体类
 * 
 * @author King
 *
 */
public class SysRoleMenu extends BaseEntity implements Serializable {
	
	private static final long serialVersionUID = 1L;

	/**roleId*/
	private String roleId;
	/**menuId*/
	private String menuId;
	

	/**
	 *方法: 取得String
	 *@return: String  roleId
	 */
	public String getRoleId(){
		return this.roleId;
	}

	/**
	 *方法: 设置String
	 *@param: String  roleId
	 */
	public void setRoleId(String roleId){
		this.roleId = roleId;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  menuId
	 */
	public String getMenuId(){
		return this.menuId;
	}

	/**
	 *方法: 设置String
	 *@param: String  menuId
	 */
	public void setMenuId(String menuId){
		this.menuId = menuId;
	}

	@Override
	public String toString() {
		return "角色菜单：[角色ID=" + roleId + ", 菜单ID=" + menuId + "]";
	}
	
}
