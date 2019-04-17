package com.idp.biz.system.dao;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.idp.common.base.BaseDao;
import com.idp.biz.system.entity.SysDictionary;

/**
 * 数据字典dao接口
 * 
 * @author King
 *
 */
@Mapper
public interface SysDictionaryDao extends BaseDao<SysDictionary, String> {

	/**
	 * 根据分组id获取信息
	 * @param groupId
	 * @return
	 */
	public List<SysDictionary> getByGroupId(String groupId);
	
	/**
	 * 根据分组id删除信息
	 * @param groupId
	 */
	public void deleteByGroupId(String groupId);
	
	/**
	 * 根据分组code获取信息
	 * @param code
	 * @return
	 */
	public SysDictionary getByGroupCode(String code);
}