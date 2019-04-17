package com.idp.biz.system.dao;

import org.apache.ibatis.annotations.Mapper;

import com.idp.common.base.BaseDao;
import com.idp.biz.system.entity.SysLog;

/**
 * 系统日志dao接口
 * 
 * @author King 2018-06-27
 *
 */
@Mapper
public interface SysLogDao extends BaseDao<SysLog, String> {
	
}