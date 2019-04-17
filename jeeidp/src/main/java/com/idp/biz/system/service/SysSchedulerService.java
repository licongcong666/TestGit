package com.idp.biz.system.service;

import java.util.List;

import com.idp.common.model.PageModel;
import com.idp.biz.system.entity.SysScheduler;

/**
 * 定时任务service接口
 * 
 * @author King 2018-06-27
 *
 */
public interface SysSchedulerService{
	
	/**
	 * 分页查询
	 * King 2018-06-27
	 * @param sysScheduler
	 * @param page
	 * @return
	 */
	public PageModel<SysScheduler> findByPage(SysScheduler sysScheduler,PageModel<SysScheduler> page);
	
	/**
	 * 条件查询
	 * King 2018-06-27
	 * @param sysScheduler
	 * @return
	 */
	public List<SysScheduler> findBySearch(SysScheduler sysScheduler);
	
	/**
	 * 通过PK查询
	 * King 2018-06-27
	 * @param id
	 * @return
	 */
	public SysScheduler getById(String id);
	
	/**
	 * 新增
	 * King 2018-06-27
	 * @param sysScheduler
	 */
	public void add(SysScheduler sysScheduler) throws Exception;

	/**
	 * 修改
	 * King 2018-06-27
	 * @param sysScheduler
	 */
	public String update(SysScheduler sysScheduler) throws Exception;
	
	/**
	 * 删除
	 * King 2018-06-27
	 * @param ids
	 */
	public void delete(String ids) throws Exception;
	
	/**
	 * 启用/禁用
	 * King 2018-06-27
	 * @param ids
	 */
	public String enable(SysScheduler sysScheduler) throws Exception;
}

