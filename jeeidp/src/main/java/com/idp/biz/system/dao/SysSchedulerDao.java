package com.idp.biz.system.dao;

import org.apache.ibatis.annotations.Mapper;

import com.idp.common.base.BaseDao;
import com.idp.biz.system.entity.SysScheduler;

/**
 * 定时任务dao接口
 * 
 * @author King 2018-06-27
 *
 */
@Mapper
public interface SysSchedulerDao extends BaseDao<SysScheduler, String> {
	
	/**
	 * 启用/禁用
	 * King 2018-06-27
	 * @param ids
	 */
	public void enable(SysScheduler sysScheduler);
}