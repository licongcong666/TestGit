package com.idp.scheduler.quartz.config;

import java.util.List;

import org.quartz.Scheduler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import com.idp.biz.system.entity.SysScheduler;
import com.idp.biz.system.service.SysSchedulerService;

@Component
@Order(value = 1)//如果有多个的话，执行优先级是按value值从小到大顺序【越小越先执行】
public class LoadScheduler implements CommandLineRunner {

	@Autowired 
	@Qualifier("Scheduler")
    private Scheduler scheduler;
	@Autowired
	private SysSchedulerService sysSchedulerService;
	
	@Override
	public void run(String... args) throws Exception {
		
		List<SysScheduler> schedulerList = sysSchedulerService.findBySearch(new SysScheduler());
		
		if(schedulerList != null && schedulerList.size() > 0) {
			
			for(SysScheduler sysScheduler : schedulerList) {
				
				if(SysScheduler.SCHEDULER_ENABLE.equals(sysScheduler.getEnabled())) {
					
					SchedulerUtil.addJob(scheduler, sysScheduler.getJobName(),sysScheduler.getJobClass(), sysScheduler.getJobGroup(), sysScheduler.getCron());
				}
			}
		}
		
	}

}
