package com.idp.biz.system.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.idp.common.base.BaseEntity;

/**
 * 组织管理实体类
 * 
 * @author King
 *
 */
public class SysOrg extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 1L;

	/** 组织编码 */
	private String orgCode;
	/** 组织名称 */
	private String orgName;
	/** 备注 */
	private String description;
	/** 上级组织ID */
	private String parentId;
	
	/** 下级组织数量 */
	private Integer childNum;
	/** 上级组织 */
	private SysOrg parentOrg;
	/** 下级组织 */
	private List<SysOrg> children = new ArrayList<SysOrg>();
	
	public String getOrgCode() {
		return orgCode;
	}
	public void setOrgCode(String orgCode) {
		this.orgCode = orgCode;
	}
	public String getOrgName() {
		return orgName;
	}
	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	
	public Integer getChildNum() {
		return childNum;
	}
	public void setChildNum(Integer childNum) {
		this.childNum = childNum;
	}
	public SysOrg getParentOrg() {
		return parentOrg;
	}
	public void setParentOrg(SysOrg parentOrg) {
		this.parentOrg = parentOrg;
	}
	public List<SysOrg> getChildren() {
		return children;
	}
	public void setChildren(List<SysOrg> children) {
		this.children = children;
	}
	
	@Override
	public String toString() {
		return "组织管理：[组织编码=" + orgCode + ", 组织名称=" + orgName + ", 备注=" + description + ", 上级组织ID="
				+ parentId + "]";
	}
	
}
