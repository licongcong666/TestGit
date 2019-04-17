package com.idp.biz.system.entity;

import java.io.Serializable;
import java.util.Date;

import com.idp.common.base.BaseEntity;

/**
 * 定时任务实体类
 * 
 * @author King 2018-06-27
 *
 */
public class SysScheduler extends BaseEntity implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	/** 任务启用 */
	public static final String SCHEDULER_ENABLE = "Y";
	/** 任务禁用 */
	public static final String SCHEDULER_DISABLED = "N";
	
	/** 任务状态-成功 */
	public static final String STATE_SUCCESS = "1";
	/** 任务状态-失败 */
	public static final String STATE_FAIL = "2";
	
	/**主键ID*/
	private String id;
	/**任务名称*/
	private String jobName;
	/**任务分组*/
	private String jobGroup;
	/**任务状态*/
	private String jobState;
	/**任务执行类*/
	private String jobClass;
	/**cron表达式*/
	private String cron;
	/**描述*/
	private String description;
	/**开始时间*/
	private Date startTime;
	/**结束时间*/
	private Date endTime;
	/**是否启用*/
	private String enabled;
	
	/**
	 *方法: 取得String
	 *@return: String  主键ID
	 */
	public String getId(){
		return this.id;
	}

	/**
	 *方法: 设置String
	 *@param: String  主键ID
	 */
	public void setId(String id){
		this.id = id;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  任务名称
	 */
	public String getJobName(){
		return this.jobName;
	}

	/**
	 *方法: 设置String
	 *@param: String  任务名称
	 */
	public void setJobName(String jobName){
		this.jobName = jobName;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  任务分组
	 */
	public String getJobGroup(){
		return this.jobGroup;
	}

	/**
	 *方法: 设置String
	 *@param: String  任务分组
	 */
	public void setJobGroup(String jobGroup){
		this.jobGroup = jobGroup;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  任务状态
	 */
	public String getJobState(){
		return this.jobState;
	}

	/**
	 *方法: 设置String
	 *@param: String  任务状态
	 */
	public void setJobState(String jobState){
		this.jobState = jobState;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  任务执行类
	 */
	public String getJobClass(){
		return this.jobClass;
	}

	/**
	 *方法: 设置String
	 *@param: String  任务执行类
	 */
	public void setJobClass(String jobClass){
		this.jobClass = jobClass;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  cron表达式
	 */
	public String getCron(){
		return this.cron;
	}

	/**
	 *方法: 设置String
	 *@param: String  cron表达式
	 */
	public void setCron(String cron){
		this.cron = cron;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  描述
	 */
	public String getDescription(){
		return this.description;
	}

	/**
	 *方法: 设置String
	 *@param: String  描述
	 */
	public void setDescription(String description){
		this.description = description;
	}
	
	/**
	 *方法: 取得Date
	 *@return: Date  开始时间
	 */
	public Date getStartTime(){
		return this.startTime;
	}

	/**
	 *方法: 设置Date
	 *@param: Date  开始时间
	 */
	public void setStartTime(Date startTime){
		this.startTime = startTime;
	}
	
	/**
	 *方法: 取得Date
	 *@return: Date  结束时间
	 */
	public Date getEndTime(){
		return this.endTime;
	}

	/**
	 *方法: 设置Date
	 *@param: Date  结束时间
	 */
	public void setEndTime(Date endTime){
		this.endTime = endTime;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  是否启用
	 */
	public String getEnabled(){
		return this.enabled;
	}

	/**
	 *方法: 设置String
	 *@param: String  是否启用
	 */
	public void setEnabled(String enabled){
		this.enabled = enabled;
	}

	@Override
	public String toString() {
		return "定时任务:[主键ID=" + id + ", 任务名称=" + jobName + ", 任务分组=" + jobGroup + ", 任务状态=" + jobState
				+ ", 任务执行类=" + jobClass + ", cron表达式=" + cron + ", 描述=" + description + ", 开始时间="
				+ startTime + ", 结束时间=" + endTime + ", 是否启用=" + enabled + "]";
	}
	
}
