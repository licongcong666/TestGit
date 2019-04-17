package com.idp.biz.system.entity;

import java.io.Serializable;
import java.util.Date;

import com.idp.common.base.BaseEntity;

/**
 * 系统日志实体类
 * 
 * @author King 2018-06-27
 *
 */
public class SysLog extends BaseEntity implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	/** 功能信息 */
	public static final String MENU_INFO = "1";
	/** 功能异常 */
	public static final String MENU_ERROR = "2";
	/** 定时任务异常 */
	public static final String JOB_ERROR= "3";
	
	/**主键ID*/
	private String id;
	/**日志类型*/
	private String logType;
	/**日志标题*/
	private String logTitle;
	/**日志内容*/
	private String logContent;
	/**操作人*/
	private String operateUser;
	/**操作IP*/
	private String operateIp;
	/**操作时间*/
	private Date operateDate;
	
	/**操作时间开始*/
	private Date operateDateStart;
	/**操作时间结束*/
	private Date operateDateEnd;
	
	private String logTypeText;
	private String operateUserName;
	private String operateUserText;
	
	public SysLog() {
		super();
	}
	
	public SysLog(String logType, String logTitle, String logContent, 
			String operateUser,String operateIp, Date operateDate) {
		super();
		this.logType = logType;
		this.logTitle = logTitle;
		this.logContent = logContent;
		this.operateUser = operateUser;
		this.operateIp = operateIp;
		this.operateDate = operateDate;
	}

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
	 *@return: String  日志类型
	 */
	public String getLogType(){
		return this.logType;
	}

	/**
	 *方法: 设置String
	 *@param: String  日志类型
	 */
	public void setLogType(String logType){
		this.logType = logType;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  日志标题
	 */
	public String getLogTitle(){
		return this.logTitle;
	}

	/**
	 *方法: 设置String
	 *@param: String  日志标题
	 */
	public void setLogTitle(String logTitle){
		this.logTitle = logTitle;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  日志内容
	 */
	public String getLogContent(){
		return this.logContent;
	}

	/**
	 *方法: 设置String
	 *@param: String  日志内容
	 */
	public void setLogContent(String logContent){
		this.logContent = logContent;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  操作人
	 */
	public String getOperateUser(){
		return this.operateUser;
	}

	/**
	 *方法: 设置String
	 *@param: String  操作人
	 */
	public void setOperateUser(String operateUser){
		this.operateUser = operateUser;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  操作功能
	 */
	public String getOperateIp(){
		return this.operateIp;
	}

	/**
	 *方法: 设置String
	 *@param: String  操作功能
	 */
	public void setOperateIp(String operateIp){
		this.operateIp = operateIp;
	}
	
	/**
	 *方法: 取得Date
	 *@return: Date  操作时间
	 */
	public Date getOperateDate(){
		return this.operateDate;
	}

	/**
	 *方法: 设置Date
	 *@param: Date  操作时间
	 */
	public void setOperateDate(Date operateDate){
		this.operateDate = operateDate;
	}
	
	
	/**
	 *方法: 取得Date
	 *@return: Date  操作时间开始
	 */
	public Date getOperateDateStart(){
		return this.operateDateStart;
	}

	/**
	 *方法: 设置Date
	 *@param: Date  操作时间开始
	 */
	public void setOperateDateStart(Date operateDateStart){
		this.operateDateStart = operateDateStart;
	}
	
	/**
	 *方法: 取得Date
	 *@return: Date  操作时间结束
	 */
	public Date getOperateDateEnd(){
		return this.operateDateEnd;
	}

	/**
	 *方法: 设置Date
	 *@param: Date  操作时间结束
	 */
	public void setOperateDateEnd(Date operateDateEnd){
		this.operateDateEnd = operateDateEnd;
	}
	
	public String getLogTypeText() {
		return logTypeText;
	}

	public void setLogTypeText(String logTypeText) {
		this.logTypeText = logTypeText;
	}

	public String getOperateUserName() {
		return operateUserName;
	}

	public void setOperateUserName(String operateUserName) {
		this.operateUserName = operateUserName;
	}

	public String getOperateUserText() {
		return operateUserText;
	}

	public void setOperateUserText(String operateUserText) {
		this.operateUserText = operateUserText;
	}

	@Override
	public String toString() {
		return "系统日志：[主键ID=" + id + ", 日志类别=" + logType + ", 日志标题=" + logTitle
				+ ", 日志内容=" + logContent + ", 操作人=" + operateUser + ", 操作IP=" + operateIp + ", 操作日期=" + operateDate
				+ ", 操作日期(开始)=" + operateDateStart + ", 操作日期(结束)=" + operateDateEnd + "]";
	}
	
}
