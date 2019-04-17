package com.idp.biz.system.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.idp.common.constant.SysMessage;
import com.idp.common.model.PageModel;
import com.idp.common.util.MD5Util;
import com.idp.common.util.ResourceEnum;
import com.idp.common.util.ResourceUtil;
import com.idp.biz.system.dao.SysRoleDao;
import com.idp.biz.system.dao.SysRoleMenuDao;
import com.idp.biz.system.dao.SysUserDao;
import com.idp.biz.system.dao.SysUserRoleDao;
import com.idp.biz.system.entity.SysRole;
import com.idp.biz.system.entity.SysUser;
import com.idp.biz.system.entity.SysUserRole;
import com.idp.biz.system.service.SysUserService;

/**
 * 用户管理service实现类
 * 
 * @author King
 *
 */
@Service("sysUserService")
public class SysUserServiceImpl implements SysUserService {

	@Autowired
	private SysUserDao sysUserDao;
	@Autowired
	private SysUserRoleDao sysUserRoleDao;
	@Autowired
	private SysRoleMenuDao sysRoleMenuDao;
	@Autowired
	private SysRoleDao sysRoleDao;
	
	@Override
	public SysUser findByUsername(SysUser LoginUser) {
		
		SysUser sysUser = sysUserDao.findByUsername(LoginUser.getUsername());
		
		if(sysUser != null){
			
			List<SysRole> roleList = sysRoleDao.findByUserId(sysUser.getId());
			if(roleList != null){
				List<String> roleNames = new ArrayList<>();
				for(SysRole role : roleList){
					
					roleNames.add(role.getRoleName());
				}
				sysUser.setRoleName(String.join(",", roleNames));
			}
		}
		
		return sysUser;
	}

	@Override
	public PageModel<SysUser> findByPage(SysUser sysUser, PageModel<SysUser> page) {
		
		PageHelper.offsetPage(page.getStart(), page.getLength());
		page.initData(sysUserDao.findByPage(sysUser));
		
		return page;
	}
	
	@Override
	public List<SysUser> findAllUser() {
		
		return sysUserDao.find(new SysUser());
	}

	@Override
	public SysUser getById(String id) {
		
		SysUser sysUser = sysUserDao.getById(id);
		
		List<SysRole> roleList = sysRoleDao.findByUserId(id);
		if(roleList != null){
			List<String> roleNames = new ArrayList<>();
			for(SysRole role : roleList){
				
				roleNames.add(role.getRoleName());
			}
			sysUser.setRoleName(String.join(",", roleNames));
		}
		
		return sysUser;
	}

	@Override
	public void add(SysUser sysUser) {
		
		sysUser.setId(ResourceUtil.getUUID());
		String initPwd = ResourceUtil.getConfigByName(ResourceEnum.USER_INIT_PASSWORD.getValue());
		sysUser.setPassword(MD5Util.MD5(initPwd));
		sysUserDao.add(sysUser);
		
		if(StringUtils.isNotEmpty(sysUser.getRoleIds())){
			for(String roleId : sysUser.getRoleIds().split(",")){
				if(StringUtils.isNotEmpty(roleId)){
					SysUserRole userRole = new SysUserRole();
					userRole.setId(ResourceUtil.getUUID());
					userRole.setRoleId(roleId);
					userRole.setUserId(sysUser.getId());
					sysUserRoleDao.add(userRole);
				}
			}
		}
	}

	@Override
	public void update(SysUser sysUser) {
		
		sysUserDao.update(sysUser);
		
		// 删除旧数据
		sysUserRoleDao.deleteByUserId(sysUser.getId());
		
		if(StringUtils.isNotEmpty(sysUser.getRoleIds())){
			for(String roleId : sysUser.getRoleIds().split(",")){
				if(StringUtils.isNotEmpty(roleId)){
					SysUserRole userRole = new SysUserRole();
					userRole.setId(ResourceUtil.getUUID());
					userRole.setRoleId(roleId);
					userRole.setUserId(sysUser.getId());
					sysUserRoleDao.add(userRole);
				}
			}
		}
	}

	@Override
	public void delete(String ids) {
		
		List<String> idList = Arrays.asList(ids.split(","));
		
		sysUserDao.batchDelete(idList);
		// 删除旧数据
		sysUserRoleDao.deleteByUserIds(idList);
	}
	
	@Override
	public void resetPwd(String ids) {
		
		String[] idss = ids.split(",");
		String initPwd = ResourceUtil.getConfigByName(ResourceEnum.USER_INIT_PASSWORD.getValue());
		
		for(String id : idss){
			
			SysUser sysUser = new SysUser();
			sysUser.setId(id);
			sysUser.setPassword(MD5Util.MD5(initPwd));
			sysUserDao.updateNotNull(sysUser);
		}
		
	}

	@Override
	public List<String> findByUserId(String userId) {
		
		return sysUserRoleDao.findByUserId(userId);
	}

	@Override
	public List<String> findMenuIdByUserId(String userId) {
		
		return sysRoleMenuDao.findMenuIdByUserId(userId);
	}

	@Override
	public void updateByOneself(SysUser sysUser) {
		
		sysUserDao.updateNotNull(sysUser);
	}

	@Override
	public String updatePassword(SysUser sysUser) {
		
		SysUser oldUser = sysUserDao.getById(sysUser.getId());
		
		String oldPassword = MD5Util.MD5(sysUser.getPassword());
		
		if(oldPassword.equals(oldUser.getPassword())) {
			
			sysUser.setPassword(MD5Util.MD5(sysUser.getNewPassword()));
			sysUserDao.updateNotNull(sysUser);
			
			return SysMessage.USER_PWD_UPDATE_SUCCESS;
		} else {
			
			return SysMessage.USER_OLDPWD_DIFFERENCE;
		}
	}
}
