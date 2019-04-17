package com.idp.biz.system.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.idp.common.base.BaseDao;
import com.idp.biz.system.entity.SysOrg;

/**
 * 组织管理dao接口
 * 
 * @author King
 *
 */
@Mapper
public interface SysOrgDao extends BaseDao<SysOrg, String> {

	/**
	 * treetable方式查询
	 * @param parentId
	 * @return
	 */
	public List<SysOrg> findForTreeTable(String parentId);
	
	/**
	 * 根据父组织id删除子组织
	 * @param parentId
	 */
	public void deleteByParentId(String parentId);
	
	/**
	 * 获取父组织下最大的组织编码
	 * @param parentId
	 * @return
	 */
	public String getMaxCode(String parentId);
}
