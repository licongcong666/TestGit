package com.idp.biz.system.service;
import java.util.List;

import com.idp.common.model.PageModel;
import com.idp.biz.system.entity.SysRole;

/**
 * 角色管理service接口
 * 
 * @author King
 *
 */
public interface SysRoleService{
	
 	/**
 	 * 分页查询
 	 * @param sysRole
 	 * @param page
 	 * @return
 	 */
	public PageModel<SysRole> findByPage(SysRole sysRole,PageModel<SysRole> page);
	
	/**
	 * 条件查询
	 * @param sysRole
	 * @return
	 */
	public List<SysRole> findBySearch(SysRole sysRole);
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public SysRole getById(String id);
	
	/**
	 * 新增
	 * @param sysRole
	 */
	public void add(SysRole sysRole);
	
	/**
	 * 修改
	 * @param sysRole
	 */
	public void update(SysRole sysRole);
	
	/**
	 * 删除
	 * @param id
	 */
	public String delete(String id);
	
	/**
	 * 根据角色id获取所有菜单权限
	 * @param roleId
	 * @return
	 */
	public List<String> findByRoleId(String roleId);
}
