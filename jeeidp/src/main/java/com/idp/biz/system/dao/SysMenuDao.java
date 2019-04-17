package com.idp.biz.system.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.idp.common.base.BaseDao;
import com.idp.biz.system.entity.SysMenu;

/**
 * 菜单dao接口
 * 
 * @author King
 *
 */
@Mapper
public interface SysMenuDao extends BaseDao<SysMenu, String> {
	
	/**
	 * 根据父菜单id获取子菜单
	 * @param parentId
	 * @return
	 */
	public List<SysMenu> getByParentId(String parentId);
	
	/**
	 * 根据父菜单id删除子菜单
	 * @param parentId
	 */
	public void deleteByParentId(String parentId);
	
	/**
	 * treetable方式查询
	 * @param parentId
	 * @return
	 */
	public List<SysMenu> findForTreeTable(String parentId);
	
}
