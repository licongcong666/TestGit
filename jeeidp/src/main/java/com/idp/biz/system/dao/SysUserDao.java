package com.idp.biz.system.dao;

import org.apache.ibatis.annotations.Mapper;

import com.idp.common.base.BaseDao;
import com.idp.biz.system.entity.SysUser;

/**
 * 用户管理dao接口
 * 
 * @author King
 *
 */
@Mapper
public interface SysUserDao extends BaseDao<SysUser, String> {

	/**
	 * 根据用户名查询
	 * @param username
	 * @return
	 */
	public SysUser findByUsername(String username);
}
