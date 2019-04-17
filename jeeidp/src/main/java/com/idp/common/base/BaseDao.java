package com.idp.common.base;

import java.util.List;

import com.github.pagehelper.Page;


/**
 * 基础dao
 * 
 * @author King
 *
 * @param <T>
 * @param <PK>
 */
public interface BaseDao<T,PK> {

	/**
	 * 分页查询
	 * @param model
	 * @return
	 */
	public Page<T> findByPage(T model);
	
	/**
	 * 条件查询
	 * @param model
	 * @return
	 */
	public List<T> find(T model);
	
	/**
	 * 查询单条数据
	 * @param id
	 * @return
	 */
	public T getById(PK id);
	
	/**
	 * 新增
	 * @param model
	 */
	public void add(T model);
	
	/**
	 * 修改
	 * @param model
	 */
	public void update(T model);
	
	/**
	 * 修改非空字段
	 * @param model
	 */
	public void updateNotNull(T model);
	
	/**
	 * 删除
	 * @param id
	 */
	public void delete(PK id);
	
	/**
	 * 批量删除
	 * @param ids
	 */
	public void batchDelete(List<PK> ids);
}
