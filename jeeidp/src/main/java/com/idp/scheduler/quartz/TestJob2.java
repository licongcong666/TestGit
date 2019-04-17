package com.idp.scheduler.quartz;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.idp.scheduler.quartz.config.BaseJob;

public class TestJob2 implements BaseJob {

	private static Logger logger = LoggerFactory.getLogger(TestJob2.class); 
	
	@Override
	public void execute(JobExecutionContext context) throws JobExecutionException {
		
//		String a = null;
//		a.length();
		logger.info("TestJob2:"+ new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
	}

}
