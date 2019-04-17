package com.idp.biz.system.service;

import java.util.List;

import com.idp.biz.system.entity.SysOrg;

/**
 * 组织service接口
 * 
 * @author King
 *
 */
public interface SysOrgService {

	/**
	 * 条件查询
	 * @param org
	 * @return
	 */
	public List<SysOrg> find(SysOrg org);
	
	/**
	 * treetable方式查询
	 * @param parentId
	 * @return
	 */
	public List<SysOrg> findForTreeTable(String parentId);
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public SysOrg getById(String id);
	
	/**
	 * 新增
	 * @param org
	 */
	public void add(SysOrg org);
	
	/**
	 * 修改
	 * @param org
	 */
	public void update(SysOrg org);
	
	/**
	 * 删除
	 * @param id
	 */
	public void delete(String id);
}
