package com.idp.biz.system.dao;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.idp.common.base.BaseDao;
import com.idp.biz.system.entity.SysRoleMenu;

/**
 * 角色菜单dao接口
 * 
 * @author King
 *
 */
@Mapper
public interface SysRoleMenuDao extends BaseDao<SysRoleMenu, String> {

	/**
	 * 获取角色所有菜单权限
	 * @param roleId
	 * @return
	 */
	public List<String> findByRoleId(String roleId);
	
	/**
	 * 删除角色下所有的菜单
	 * @param roleId
	 */
	public void deleteByRoleId(String roleId);
	
	/**
	 * 删除角色下所有的菜单
	 * @param roleId
	 */
	public void deleteByRoleIds(List<String> roleIds);
	
	/**
	 * 获取用户所有的有权限的菜单
	 * @param userId
	 * @return
	 */
	public List<String> findMenuIdByUserId(String userId);
}