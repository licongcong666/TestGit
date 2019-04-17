package com.idp.biz.system.service.impl;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.idp.common.model.PageModel;
import com.idp.common.util.ResourceUtil;
import com.idp.biz.system.service.SysLogService;
import com.idp.biz.system.dao.SysLogDao;
import com.idp.biz.system.entity.SysLog;

/**
 * 系统日志service实现类
 * 
 * @author King 2018-06-27
 *
 */
@Service("sysLogService")
public class SysLogServiceImpl implements SysLogService {

	@Autowired
	private SysLogDao sysLogDao;
	
	@Override
	public PageModel<SysLog> findByPage(SysLog sysLog, PageModel<SysLog> page) {

		PageHelper.offsetPage(page.getStart(), page.getLength());
		page.initData(sysLogDao.findByPage(sysLog));
		
		return page;
	}
	
	@Override
	public List<SysLog> findBySearch(SysLog sysLog) {

		return sysLogDao.find(sysLog);
	}
	
	@Override
	public SysLog getById(String id) {

		return sysLogDao.getById(id);
	}

	@Override
	public void add(SysLog sysLog) {

		sysLog.setId(ResourceUtil.getUUID());
		sysLogDao.add(sysLog);
	}
	
	@Override
	public void update(SysLog sysLog) {

		sysLogDao.update(sysLog);
	}

	@Override
	public void delete(String ids) {

		List<String> idList = Arrays.asList(ids.split(","));
		
		sysLogDao.batchDelete(idList);
	}
 	
}