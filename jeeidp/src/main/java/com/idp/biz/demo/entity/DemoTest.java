package com.idp.biz.demo.entity;

import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.idp.common.base.BaseEntity;

/**
 * 測試功能实体类
 * 
 * @author King 2018-07-11
 *
 */
public class DemoTest extends BaseEntity implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	/**主鍵*/
	private String demoId;
	/**名称*/
	private String name;
	/**年龄*/
	private Integer age;
	/**出生日期*/
	private Date birthday;
	/**部门*/
	private String deptId;
	/**性别*/
	private String sex;
	/**爱好*/
	private String hobby;
	/**描述*/
	private String remark;
	
	/**出生日期开始*/
	private Date birthdayStart;
	/**出生日期结束*/
	private Date birthdayEnd;
	
	/**
	 *方法: 取得String
	 *@return: String  主鍵
	 */
	public String getDemoId(){
		return this.demoId;
	}

	/**
	 *方法: 设置String
	 *@param: String  主鍵
	 */
	public void setDemoId(String demoId){
		this.demoId = demoId;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  名称
	 */
	public String getName(){
		return this.name;
	}

	/**
	 *方法: 设置String
	 *@param: String  名称
	 */
	public void setName(String name){
		this.name = name;
	}
	
	/**
	 *方法: 取得Integer
	 *@return: Integer  年龄
	 */
	public Integer getAge(){
		return this.age;
	}

	/**
	 *方法: 设置Integer
	 *@param: Integer  年龄
	 */
	public void setAge(Integer age){
		this.age = age;
	}
	
	/**
	 *方法: 取得Date
	 *@return: Date  出生日期
	 */
	public Date getBirthday(){
		return this.birthday;
	}

	/**
	 *方法: 设置Date
	 *@param: Date  出生日期
	 */
	public void setBirthday(Date birthday){
		this.birthday = birthday;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  部门
	 */
	public String getDeptId(){
		return this.deptId;
	}

	/**
	 *方法: 设置String
	 *@param: String  部门
	 */
	public void setDeptId(String deptId){
		this.deptId = deptId;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  性别
	 */
	public String getSex(){
		return this.sex;
	}

	/**
	 *方法: 设置String
	 *@param: String  性别
	 */
	public void setSex(String sex){
		this.sex = sex;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  爱好
	 */
	public String getHobby(){
		return this.hobby;
	}

	/**
	 *方法: 设置String
	 *@param: String  爱好
	 */
	public void setHobby(String hobby){
		this.hobby = hobby;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  描述
	 */
	public String getRemark(){
		return this.remark;
	}

	/**
	 *方法: 设置String
	 *@param: String  描述
	 */
	public void setRemark(String remark){
		this.remark = remark;
	}
	
	
	/**
	 *方法: 取得Date
	 *@return: Date  出生日期开始
	 */
	public Date getBirthdayStart(){
		return this.birthdayStart;
	}

	/**
	 *方法: 设置Date
	 *@param: Date  出生日期开始
	 */
	public void setBirthdayStart(Date birthdayStart){
		this.birthdayStart = birthdayStart;
	}
	
	/**
	 *方法: 取得Date
	 *@return: Date  出生日期结束
	 */
	public Date getBirthdayEnd(){
		return this.birthdayEnd;
	}

	/**
	 *方法: 设置Date
	 *@param: Date  出生日期结束
	 */
	public void setBirthdayEnd(Date birthdayEnd){
		this.birthdayEnd = birthdayEnd;
	}
	
	
	@Override
	public String toString() {

		return "測試功能：["  + "主鍵=" + demoId + ", 名称=" + name + ", 年龄=" + age + ", 出生日期=" + birthday + ", 部门=" + deptId + ", 性别=" + sex + ", 爱好=" + hobby + ", 描述=" + remark + ",出生日期(开始)=" + birthdayStart + ",出生日期(结束)=" + birthdayEnd + "]";
	}
}
