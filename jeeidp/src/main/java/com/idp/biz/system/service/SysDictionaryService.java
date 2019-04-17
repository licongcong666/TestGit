package com.idp.biz.system.service;
import java.util.List;

import com.idp.common.model.PageModel;
import com.idp.biz.system.entity.SysDictionary;

/**
 * 数据字典service接口
 * 
 * @author King
 *
 */
public interface SysDictionaryService{
	
 	/**
 	 * 分页查询
 	 * @param sysDictionary
 	 * @param page
 	 * @return
 	 */
	public PageModel<SysDictionary> findByPage(SysDictionary sysDictionary,PageModel<SysDictionary> page);
	
	/**
	 * 查询
	 * @param sysDictionary
	 * @return
	 */
	public List<SysDictionary> findBySearch(SysDictionary sysDictionary);
	
	/**
	 * 通过ID查询
	 * @param id
	 * @return
	 */
	public SysDictionary getById(String id);
	
	/**
	 * 新增
	 * @param sysDictionary
	 */
	public void add(SysDictionary sysDictionary);
	
	/**
	 * 修改
	 * @param sysDictionary
	 */
	public void update(SysDictionary sysDictionary);
	
	/**
	 * 删除
	 * @param sysDictionary
	 */
	public void delete(SysDictionary sysDictionary);
	
	/**
	 * 通过code查询
	 * @param code
	 * @return
	 */
	public SysDictionary getByCode(String code);
}
