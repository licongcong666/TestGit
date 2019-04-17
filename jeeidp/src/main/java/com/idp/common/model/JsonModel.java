package com.idp.common.model;

/**
 * json数据格式化
 * 
 * @author King
 *
 */
public class JsonModel {

	private boolean success;
	private String message;
	private Object data;
	
	public JsonModel() {
		super();
		this.success = true;
	}
	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	
	@Override
	public String toString() {
		
		return "返回数据：[是否成功=" + success + ", 提示信息=" + message + ", 数据=" + data + "]";
	}
	
}
