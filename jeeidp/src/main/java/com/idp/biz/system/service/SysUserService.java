package com.idp.biz.system.service;

import java.util.List;

import com.idp.common.model.PageModel;
import com.idp.biz.system.entity.SysUser;

/**
 * 用户管理service接口
 * 
 * @author King
 *
 */
public interface SysUserService {

	/**
	 * 根据用户查询
	 * @param loginUser
	 * @return
	 */
	public SysUser findByUsername(SysUser loginUser);
	
	/**
	 * 分页查询
	 * @param sysUser
	 * @param page
	 * @return
	 */
	public PageModel<SysUser> findByPage(SysUser sysUser,PageModel<SysUser> page);
	
	/**
	 * 查询所有用户
	 * @return
	 */
	public List<SysUser> findAllUser();
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public SysUser getById(String id);
	
	/**
	 * 新增
	 * @param sysUser
	 */
	public void add(SysUser sysUser);
	
	/**
	 * 修改
	 * @param sysUser
	 */
	public void update(SysUser sysUser);
	
	/**
	 * 删除
	 * @param id
	 */
	public void delete(String ids);
	
	/**
	 * 重置密码
	 * @param id
	 */
	public void resetPwd(String ids);
	
	/**
	 * 查询用户的所有角色
	 * @param userId
	 * @return
	 */
	public List<String> findByUserId(String userId);
	
	/**
	 * 获取用户所有有权限的菜单id
	 * @param userId
	 * @return
	 */
	public List<String> findMenuIdByUserId(String userId);
	
	/**
	 * 修改个人信息
	 * @param sysUser
	 */
	public void updateByOneself(SysUser sysUser);
	
	/**
	 * 修改个人密码
	 * @param sysUser
	 * @return
	 */
	public String updatePassword(SysUser sysUser);
	
}
