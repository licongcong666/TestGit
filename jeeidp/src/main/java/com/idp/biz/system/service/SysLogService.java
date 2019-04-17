package com.idp.biz.system.service;

import java.util.List;

import com.idp.common.model.PageModel;
import com.idp.biz.system.entity.SysLog;

/**
 * 系统日志service接口
 * 
 * @author King 2018-06-27
 *
 */
public interface SysLogService{
	
	/**
	 * 分页查询
	 * King 2018-06-27
	 * @param sysLog
	 * @param page
	 * @return
	 */
	public PageModel<SysLog> findByPage(SysLog sysLog,PageModel<SysLog> page);
	
	/**
	 * 条件查询
	 * King 2018-06-27
	 * @param sysLog
	 * @return
	 */
	public List<SysLog> findBySearch(SysLog sysLog);
	
	/**
	 * 通过PK查询
	 * King 2018-06-27
	 * @param id
	 * @return
	 */
	public SysLog getById(String id);
	
	/**
	 * 新增
	 * King 2018-06-27
	 * @param sysLog
	 */
	public void add(SysLog sysLog);

	/**
	 * 修改
	 * King 2018-06-27
	 * @param sysLog
	 */
	public void update(SysLog sysLog);
	
	/**
	 * 删除
	 * King 2018-06-27
	 * @param ids
	 */
	public void delete(String ids);
}
