package com.idp.biz.system.service.impl;
import java.util.Arrays;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.idp.biz.system.dao.SysRoleDao;
import com.idp.biz.system.dao.SysRoleMenuDao;
import com.idp.biz.system.dao.SysUserRoleDao;
import com.idp.biz.system.entity.SysRole;
import com.idp.biz.system.entity.SysRoleMenu;
import com.idp.biz.system.entity.SysUserRole;
import com.idp.biz.system.service.SysRoleService;
import com.idp.common.constant.SysMessage;
import com.idp.common.model.PageModel;
import com.idp.common.util.ResourceUtil;

/**
 * 角色管理service实现类
 * 
 * @author King
 *
 */
@Service("sysRoleService")
public class SysRoleServiceImpl implements SysRoleService {

	@Autowired
	private SysRoleDao sysRoleDao;
	@Autowired
	private SysRoleMenuDao sysRoleMenuDao;
	@Autowired
	private SysUserRoleDao sysUserRoleDao;
	
	@Override
	public PageModel<SysRole> findByPage(SysRole sysRole, PageModel<SysRole> page) {

		PageHelper.offsetPage(page.getStart(), page.getLength());
		page.initData(sysRoleDao.findByPage(sysRole));
		
		return page;
	}
	
	@Override
	public List<SysRole> findBySearch(SysRole sysRole) {

		return sysRoleDao.find(sysRole);
	}
	
	@Override
	public SysRole getById(String id) {

		return sysRoleDao.getById(id);
	}

	@Override
	public void add(SysRole sysRole) {

		sysRole.setId(ResourceUtil.getUUID());
		sysRoleDao.add(sysRole);
		
		if(StringUtils.isNotEmpty(sysRole.getMenuIds())){
			for(String menuId : sysRole.getMenuIds().split(",")){
				if(StringUtils.isNotEmpty(menuId)){
					SysRoleMenu roleMenu = new SysRoleMenu();
					roleMenu.setId(ResourceUtil.getUUID());
					roleMenu.setMenuId(menuId);
					roleMenu.setRoleId(sysRole.getId());
					sysRoleMenuDao.add(roleMenu);
				}
			}
		}
	}
	
	@Override
	public void update(SysRole sysRole) {
		
		sysRoleDao.update(sysRole);
		
		// 删除旧数据
		sysRoleMenuDao.deleteByRoleId(sysRole.getId());
		
		if(StringUtils.isNotEmpty(sysRole.getMenuIds())){
			for(String menuId : sysRole.getMenuIds().split(",")){
				if(StringUtils.isNotEmpty(menuId)){
					SysRoleMenu roleMenu = new SysRoleMenu();
					roleMenu.setId(ResourceUtil.getUUID());
					roleMenu.setMenuId(menuId);
					roleMenu.setRoleId(sysRole.getId());
					sysRoleMenuDao.add(roleMenu);
				}
			}
		}
	}

	@Override
	public String delete(String ids) {

		List<String> idList = Arrays.asList(ids.split(","));
		
		List<SysUserRole> userRoles = sysUserRoleDao.findByRoleIds(idList);
		
		if(userRoles != null && userRoles.size() > 0){
			
			return SysMessage.ROLE_HAS_USED_BY_USER;
		} else {
			
			sysRoleDao.batchDelete(idList);;
			// 删除旧数据
			sysRoleMenuDao.deleteByRoleIds(idList);
			
			return SysMessage.COMMON_DELETE_SUCCESS;
		}
	}

	@Override
	public List<String> findByRoleId(String roleId) {
		
		return sysRoleMenuDao.findByRoleId(roleId);
	}
 	
}