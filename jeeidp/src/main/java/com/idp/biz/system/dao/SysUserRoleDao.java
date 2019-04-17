package com.idp.biz.system.dao;
import com.idp.biz.system.entity.SysUserRole;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.idp.common.base.BaseDao;

/**
 * 用户角色dao接口
 * 
 * @author King
 *
 */
@Mapper
public interface SysUserRoleDao extends BaseDao<SysUserRole, String> {

	/**
	 * 查询用户的所有角色id
	 * @param userId
	 * @return
	 */
	public List<String> findByUserId(String userId);
	
	/**
	 * 删除用户的所有角色
	 * @param userId
	 */
	public void deleteByUserId(String userId);
	
	/**
	 * 删除用户的所有角色
	 * @param userIds
	 */
	public void deleteByUserIds(List<String> userIds);
	
	/**
	 * 根据角色id查询是否有用户在使用
	 * @param roleIds
	 * @return
	 */
	public List<SysUserRole> findByRoleIds(List<String> roleIds);
}