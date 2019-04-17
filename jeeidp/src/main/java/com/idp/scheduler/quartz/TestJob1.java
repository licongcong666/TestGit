package com.idp.scheduler.quartz;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.idp.scheduler.quartz.config.BaseJob;

public class TestJob1 implements BaseJob {

	private static Logger logger = LoggerFactory.getLogger(TestJob1.class); 
	
	@Override
	public void execute(JobExecutionContext context) throws JobExecutionException {
		
		logger.info("TestJob1:"+ new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
	}

}
