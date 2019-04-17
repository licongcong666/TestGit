package com.idp.biz.system.service.impl;

import java.util.Arrays;
import java.util.List;

import org.quartz.Scheduler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.idp.biz.system.dao.SysSchedulerDao;
import com.idp.biz.system.entity.SysScheduler;
import com.idp.biz.system.service.SysSchedulerService;
import com.idp.common.constant.SysMessage;
import com.idp.common.model.PageModel;
import com.idp.common.util.ResourceUtil;
import com.idp.scheduler.quartz.config.SchedulerUtil;

/**
 * 定时任务service实现类
 * 
 * @author King 2018-06-27
 *
 */
@Service("sysSchedulerService")
public class SysSchedulerServiceImpl implements SysSchedulerService {

	@Autowired
	private SysSchedulerDao sysSchedulerDao;
	
	@Autowired 
	@Qualifier("Scheduler")
    private Scheduler scheduler;
	
	@Override
	public PageModel<SysScheduler> findByPage(SysScheduler sysScheduler, PageModel<SysScheduler> page) {

		PageHelper.offsetPage(page.getStart(), page.getLength());
		page.initData(sysSchedulerDao.findByPage(sysScheduler));
		
		return page;
	}
	
	@Override
	public List<SysScheduler> findBySearch(SysScheduler sysScheduler) {

		return sysSchedulerDao.find(sysScheduler);
	}
	
	@Override
	public SysScheduler getById(String id) {

		return sysSchedulerDao.getById(id);
	}

	@Override
	public void add(SysScheduler sysScheduler) throws Exception {

		SchedulerUtil.addJob(scheduler, sysScheduler.getJobName(), sysScheduler.getJobClass(), sysScheduler.getJobGroup(), sysScheduler.getCron());
		
		sysScheduler.setId(ResourceUtil.getUUID());
		sysScheduler.setEnabled(SysScheduler.SCHEDULER_ENABLE);
		sysSchedulerDao.add(sysScheduler);
	}
	
	@Override
	public String update(SysScheduler sysScheduler) throws Exception {

		SysScheduler oldScheduler = getById(sysScheduler.getId());
		
		if(SysScheduler.SCHEDULER_ENABLE.equals(oldScheduler.getEnabled())) {
			
			boolean isRuning = SchedulerUtil.isJobRunning(scheduler, oldScheduler.getJobName(), oldScheduler.getJobGroup());
			
			if(!isRuning) {
				
				SchedulerUtil.updateJob(scheduler, oldScheduler.getJobName(), oldScheduler.getJobGroup(), sysScheduler.getCron());
				
				sysSchedulerDao.updateNotNull(sysScheduler);
				
				return SysMessage.COMMON_UPDATE_SUCCESS;
			} else {
				
				return SysMessage.SCHEDULER_JOB_RUNING;
			}
		} else {
			
			sysSchedulerDao.updateNotNull(sysScheduler);
			
			return SysMessage.COMMON_UPDATE_SUCCESS;
		}
	}

	@Override
	public void delete(String ids) throws Exception {

		List<String> idList = Arrays.asList(ids.split(","));
		
		if(idList != null && idList.size() > 0) {
			
			for(String id : idList) {
				
				SysScheduler sysScheduler = sysSchedulerDao.getById(id);
				SchedulerUtil.deleteJob(scheduler, sysScheduler.getJobName(), sysScheduler.getJobGroup());
			}
		}
		
		sysSchedulerDao.batchDelete(idList);
	}

	@Override
	public String enable(SysScheduler sysScheduler) throws Exception {
		
		String message;
		
		SysScheduler oldScheduler = sysSchedulerDao.getById(sysScheduler.getId());
		
		if(SysScheduler.SCHEDULER_ENABLE.equals(sysScheduler.getEnabled())) {
			
			SchedulerUtil.addJob(scheduler, oldScheduler.getJobName(), oldScheduler.getJobClass(), oldScheduler.getJobGroup(), oldScheduler.getCron());
			message = SysMessage.SCHEDULER_ENABLE_OK;
		} else {
			
			SchedulerUtil.deleteJob(scheduler, oldScheduler.getJobName(), oldScheduler.getJobGroup());
			message = SysMessage.SCHEDULER_DISABLED_OK;
		}
		
		sysSchedulerDao.enable(sysScheduler);
		
		return message;
	}
 	
}