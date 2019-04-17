package com.idp.scheduler.quartz.config;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

import org.quartz.CronScheduleBuilder;
import org.quartz.CronTrigger;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.JobExecutionContext;
import org.quartz.JobKey;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.TriggerBuilder;
import org.quartz.TriggerKey;
import org.quartz.impl.triggers.CronTriggerImpl;

public class SchedulerUtil {

	private static BaseJob getClass(String className) throws Exception {
        Class<?> class1 = Class.forName(className);
        return (BaseJob)class1.newInstance();
    }
	
	/**
	 * 判断cron表达式是否正确
	 * @param cronExpression
	 * @return
	 */
    public static boolean isValidExpression(String cronExpression){
    	CronTriggerImpl trigger = new CronTriggerImpl();
        try {
            trigger.setCronExpression(cronExpression);
            Date date = trigger.computeFirstFireTime(null);
            return date != null && date.after(new Date());
        } catch (ParseException e) {
        	e.printStackTrace();
        }
        return false;
    }
    
    /**
     * 判断类是否存在
     * @param className
     * @return
     */
    public static boolean isExistClass(String className){
    	
    	Class<?> class1 = null;
    	try {
    		class1 = Class.forName(className);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
    	
    	if(class1 != null) {
    		return true;
    	}
    	
        return false;
    }
    
    /**
     * 判断job是否执行中
     * @param scheduler
     * @param sysScheduler
     * @return
     * @throws SchedulerException
     */
    public static boolean isJobRunning(Scheduler scheduler, String jobName, String jobGroup) throws SchedulerException {
        List<JobExecutionContext> currentJobs = scheduler.getCurrentlyExecutingJobs();

        for (JobExecutionContext jobCtx : currentJobs) {
            String thisJobName = jobCtx.getJobDetail().getKey().getName();
            String thisGroupName = jobCtx.getJobDetail().getKey().getGroup();
            if (jobName.equalsIgnoreCase(thisJobName) && jobGroup.equalsIgnoreCase(thisGroupName)) {
                return true;
            }
        }
        return false;
    }
    
	/**
	 * 新增任务
	 * @param scheduler
	 * @param jobName
	 * @param jobClass
	 * @param jobGroup
	 * @param cron
	 * @throws Exception
	 */
    public static void addJob(Scheduler scheduler, String jobName, String jobClass, String jobGroup, String cron) throws Exception {

        // 启动调度器  
        scheduler.start(); 

        //构建job信息
        JobDetail jobDetail = JobBuilder.newJob(getClass(jobClass).getClass()).withIdentity(jobName, jobGroup).build();

        //表达式调度构建器(即任务执行的时间)
        CronScheduleBuilder scheduleBuilder = CronScheduleBuilder.cronSchedule(cron);

        //按新的cronExpression表达式构建一个新的trigger
        CronTrigger trigger = TriggerBuilder.newTrigger().withIdentity(jobName, jobGroup)
            .withSchedule(scheduleBuilder).build();

        try {
            scheduler.scheduleJob(jobDetail, trigger);

        } catch (SchedulerException e) {
            System.out.println("创建定时任务失败"+e);
            throw new Exception("创建定时任务失败");
        }
    }
    
    /**
     * 更新任务
     * @param scheduler
     * @param jobName
     * @param jobGroup
     * @param cron
     * @throws Exception
     */
    public static void updateJob(Scheduler scheduler, String jobName, String jobGroup, String cron) throws Exception {               
        try {
            TriggerKey triggerKey = TriggerKey.triggerKey(jobName, jobGroup);
            // 表达式调度构建器
            CronScheduleBuilder scheduleBuilder = CronScheduleBuilder.cronSchedule(cron);

            CronTrigger trigger = (CronTrigger) scheduler.getTrigger(triggerKey);

            // 按新的cronExpression表达式重新构建trigger
            trigger = trigger.getTriggerBuilder().withIdentity(triggerKey).withSchedule(scheduleBuilder).build();

            // 按新的trigger重新设置job执行
            scheduler.rescheduleJob(triggerKey, trigger);
        } catch (SchedulerException e) {
            System.out.println("更新定时任务失败"+e);
            throw new Exception("更新定时任务失败");
        }
    }
    
    /**
     * 暂停
     * @param scheduler
     * @param jobClassName
     * @param jobGroupName
     * @throws Exception
     */
    public static void pauseJob(Scheduler scheduler, String jobName, String jobGroup) throws Exception {   
        scheduler.pauseJob(JobKey.jobKey(jobName, jobGroup));
    }
    
    /**
     * 恢复
     * @param scheduler
     * @param jobClassName
     * @param jobGroupName
     * @throws Exception
     */
    public static void resumeJob(Scheduler scheduler, String jobName, String jobGroup) throws Exception {
        scheduler.resumeJob(JobKey.jobKey(jobName, jobGroup));
    }
    
    /**
     * 删除
     * @param scheduler
     * @param jobClassName
     * @param jobGroupName
     * @throws Exception
     */
    public static void deleteJob(Scheduler scheduler, String jobName, String jobGroup) throws Exception {       
        scheduler.pauseTrigger(TriggerKey.triggerKey(jobName, jobGroup));
        scheduler.unscheduleJob(TriggerKey.triggerKey(jobName, jobGroup));
        scheduler.deleteJob(JobKey.jobKey(jobName, jobGroup));             
    }

}
