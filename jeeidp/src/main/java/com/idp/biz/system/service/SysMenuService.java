package com.idp.biz.system.service;

import java.util.List;

import com.idp.biz.system.entity.SysMenu;

/**
 * 菜单service接口
 * 
 * @author King
 *
 */
public interface SysMenuService {
	
	/**
	 * 条件查询
	 * @param menu
	 * @return
	 */
	public List<SysMenu> find(SysMenu menu);
	
	/**
	 * 根据父菜单查询
	 * @param parentId
	 * @return
	 */
	public List<SysMenu> getByParentId(String parentId);
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public SysMenu getById(String id);
	
	/**
	 * 新增
	 * @param menu
	 */
	public void add(SysMenu menu);
	
	/**
	 * 修改
	 * @param menu
	 */
	public void update(SysMenu menu);
	
	/**
	 * 删除
	 * @param id
	 */
	public void delete(String id);
	
	/**
	 * treetable方式查询
	 * @param parentId
	 * @return
	 */
	public List<SysMenu> findForTreeTable(String parentId);
	
}
