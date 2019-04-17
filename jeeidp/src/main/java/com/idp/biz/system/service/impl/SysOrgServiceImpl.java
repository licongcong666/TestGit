package com.idp.biz.system.service.impl;

import java.text.DecimalFormat;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idp.common.util.ResourceUtil;
import com.idp.biz.system.dao.SysOrgDao;
import com.idp.biz.system.entity.SysOrg;
import com.idp.biz.system.service.SysOrgService;

/**
 * 组织管理service实现类
 * 
 * @author King
 *
 */
@Service("sysOrgService")
public class SysOrgServiceImpl implements SysOrgService {

	@Autowired
	private SysOrgDao sysOrgDao;
	
	@Override
	public List<SysOrg> find(SysOrg org) {
		
		return sysOrgDao.find(org);
	}
	
	@Override
	public List<SysOrg> findForTreeTable(String parentId) {
		
		return sysOrgDao.findForTreeTable(parentId);
	}

	@Override
	public SysOrg getById(String id) {
		
		SysOrg sysOrg = sysOrgDao.getById(id);
		sysOrg.setParentOrg(sysOrgDao.getById(sysOrg.getParentId()));
		
		return sysOrg;
	}

	@Override
	public void add(SysOrg org) {
		
		org.setId(ResourceUtil.getUUID());
		buildCode(org);
		sysOrgDao.add(org);
	}

	@Override
	public void update(SysOrg org) {
		
		// 上层组织改变时，改变组织编码
		SysOrg oldOrg = sysOrgDao.getById(org.getId());
		if(org.getParentId() != oldOrg.getParentId()){
			buildCode(org);
		}
		
		sysOrgDao.update(org);
	}

	@Override
	public void delete(String id) {
		
		sysOrgDao.delete(id);
		deleteChildren(id);
	}

	private void deleteChildren(String id){
		SysOrg param = new SysOrg();
		param.setParentId(id);
		List<SysOrg> children = sysOrgDao.find(param);
		if(children != null && children.size() > 0){
			for(SysOrg child : children){
				deleteChildren(child.getId());
			}
			sysOrgDao.deleteByParentId(id);
		}
	}
	
	private void buildCode(SysOrg org){
		
		String maxCode = sysOrgDao.getMaxCode(org.getParentId());
		
		if(StringUtils.isNotEmpty(maxCode)){
			
			String preno = maxCode.substring(0, maxCode.length() - 3);
			int no = Integer.valueOf(maxCode.substring(maxCode.length() - 3));
			DecimalFormat df = new DecimalFormat("000");
			org.setOrgCode(preno+df.format(no+1));
		}
		else{
			
			SysOrg parentOrg = sysOrgDao.getById(org.getParentId());
			org.setOrgCode(parentOrg.getOrgCode()+"001");
		}
	}
}
