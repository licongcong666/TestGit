package com.idp.scheduler.quartz.config;

import java.util.Date;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.quartz.JobListener;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.idp.biz.system.dao.SysSchedulerDao;
import com.idp.biz.system.entity.SysLog;
import com.idp.biz.system.entity.SysScheduler;
import com.idp.biz.system.service.SysLogService;
import com.idp.common.util.ExceptionUtil;

public class SchedulerListener implements JobListener {

	private static Logger logger = LoggerFactory.getLogger(SchedulerListener.class);
	
	@Autowired
	private SysSchedulerDao sysSchedulerDao;
	@Autowired
	private SysLogService sysLogService;
	
	@Override
	public String getName() {
		
		String name = getClass().getSimpleName();
		
		return name;
	}

	@Override
	public void jobExecutionVetoed(JobExecutionContext context) {
		
	}

	@Override
	public void jobToBeExecuted(JobExecutionContext context) {
		
		String jobName = context.getJobDetail().getKey().getName();

		SysScheduler param = new SysScheduler();
		param.setJobName(jobName);
		SysScheduler sysScheduler = sysSchedulerDao.find(param).get(0);
		
		sysScheduler.setStartTime(new Date());
		
		sysSchedulerDao.updateNotNull(sysScheduler);
	}

	@Override
	public void jobWasExecuted(JobExecutionContext context, JobExecutionException e) {
		
		String jobName = context.getJobDetail().getKey().getName();
		
		SysScheduler param = new SysScheduler();
		param.setJobName(jobName);
		SysScheduler sysScheduler = sysSchedulerDao.find(param).get(0);
		
		if(e != null) {
			
			String errorMessage = ExceptionUtil.getExceptionMessage(e);
	    	sysScheduler.setJobState(SysScheduler.STATE_FAIL);
	    	
	    	sysLogService.add(new SysLog(SysLog.JOB_ERROR, jobName, errorMessage, "system", "server", new Date()));
	    	logger.error("定时任务错误", e);
		} else {
			
			sysScheduler.setJobState(SysScheduler.STATE_SUCCESS);
			sysScheduler.setEndTime(new Date());
		}
		
		sysSchedulerDao.updateNotNull(sysScheduler);
	}

}
