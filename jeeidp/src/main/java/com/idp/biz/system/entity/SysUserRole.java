package com.idp.biz.system.entity;
import java.io.Serializable;

import com.idp.common.base.BaseEntity;

/**
 * 用户角色实体类
 * 
 * @author King
 *
 */
public class SysUserRole extends BaseEntity implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	/**userId*/
	private String userId;
	/**roleId*/
	private String roleId;
	
	/**
	 *方法: 取得String
	 *@return: String  userId
	 */
	public String getUserId(){
		return this.userId;
	}

	/**
	 *方法: 设置String
	 *@param: String  userId
	 */
	public void setUserId(String userId){
		this.userId = userId;
	}
	
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

	@Override
	public String toString() {
		return "用户角色:[用户ID=" + userId + ", 角色ID=" + roleId + "]";
	}
	
}
