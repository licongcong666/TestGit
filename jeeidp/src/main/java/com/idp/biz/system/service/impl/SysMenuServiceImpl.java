package com.idp.biz.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idp.common.util.ResourceUtil;
import com.idp.biz.system.dao.SysMenuDao;
import com.idp.biz.system.entity.SysMenu;
import com.idp.biz.system.service.SysMenuService;

/**
 * 菜单管理service实现类
 * 
 * @author King
 *
 */
@Service("sysMenuService")
public class SysMenuServiceImpl implements SysMenuService {

	@Autowired
	private SysMenuDao sysMenuDao;
	
	@Override
	public List<SysMenu> find(SysMenu menu) {
		
		return sysMenuDao.find(menu);
	}

	@Override
	public List<SysMenu> getByParentId(String parentId){
		
		return sysMenuDao.getByParentId(parentId);
	}
	
	@Override
	public SysMenu getById(String id) {
		
		SysMenu sysMenu = sysMenuDao.getById(id);
		sysMenu.setParentMenu(sysMenuDao.getById(sysMenu.getParentId()));
		
		return sysMenu;
	}
	
	@Override
	public void add(SysMenu menu) {
		
		menu.setId(ResourceUtil.getUUID());
		sysMenuDao.add(menu);
	}

	@Override
	public void update(SysMenu menu) {
		
		sysMenuDao.update(menu);
	}

	@Override
	public void delete(String id) {
		
		deleteChildren(id);
		sysMenuDao.delete(id);
	}

	public void deleteChildren(String id){
		SysMenu param = new SysMenu();
		param.setParentId(id);
		List<SysMenu> children = sysMenuDao.find(param);
		if(children != null && children.size() > 0){
			for(SysMenu child : children){
				deleteChildren(child.getId());
			}
			sysMenuDao.deleteByParentId(id);
		}
	}

	@Override
	public List<SysMenu> findForTreeTable(String parentId) {
		
		return sysMenuDao.findForTreeTable(parentId);
	}

}
