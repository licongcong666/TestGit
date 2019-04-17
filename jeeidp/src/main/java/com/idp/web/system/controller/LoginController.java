package com.idp.web.system.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idp.common.constant.SessionAttr;
import com.idp.common.constant.SysMessage;
import com.idp.common.model.JsonModel;
import com.idp.common.util.MD5Util;
import com.idp.common.util.MenuUtil;
import com.idp.biz.system.entity.SysMenu;
import com.idp.biz.system.entity.SysUser;
import com.idp.biz.system.service.SysMenuService;
import com.idp.biz.system.service.SysUserService;

/**
 * 登录controller
 * 
 * @author King
 *
 */
@Controller 
@RequestMapping("/login/")
public class LoginController {

	private static Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private SysUserService sysUserService;
	@Autowired
	private SysMenuService sysMenuService;
	
	/**
	 * 登录页面跳转
	 * @return
	 */
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String login() {
		
		return "pages/login";
	}
	
	/**
	 * 验证用户
	 * @param user
	 * @param request
	 * @return
	 */
	@RequestMapping(value="checkUser",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel checkUser(SysUser loginUser,HttpServletRequest request){
		JsonModel json = new JsonModel();
		
		SysUser user = sysUserService.findByUsername(loginUser);
		
		if(user != null){
			
			String password = loginUser.getPassword();
			String MD5PWD = MD5Util.MD5(password);
			
			if(MD5PWD.equals(user.getPassword())){
				
				HttpSession session = request.getSession();
				session.setAttribute(SessionAttr.USER_LOGIN.getValue(), user);
				List<String> userMenus = sysUserService.findMenuIdByUserId(user.getId());
				List<SysMenu> menuList = sysMenuService.getByParentId("0");
				session.setAttribute(SessionAttr.USER_MENUS.getValue(), MenuUtil.getMenu(menuList, userMenus));
				json.setMessage(SysMessage.LOGIN_SUCCESS);
				logger.info(user.getUsername() + SysMessage.LOGIN_SUCCESS);
			} else {
				
				json.setSuccess(false);
				json.setMessage(SysMessage.LOGIN_USER_INFO_ERROR);
				logger.info(user.getUsername() + SysMessage.LOGIN_USER_INFO_ERROR);
			}
		} else {
			
			json.setSuccess(false);
			json.setMessage(SysMessage.LOGIN_USER_NOT_EXIST);
			logger.info(loginUser.getUsername() + SysMessage.LOGIN_USER_NOT_EXIST);
		}
		
		return json;
	}
	
	/**
	 * 登出
	 * @param request
	 * @return
	 */
	@RequestMapping(value="logout",method=RequestMethod.GET)
	public String logout(HttpServletRequest request){
		
		HttpSession session = request.getSession();
		session.removeAttribute(SessionAttr.USER_LOGIN.getValue());
		session.removeAttribute(SessionAttr.USER_ROLES.getValue());
		session.removeAttribute(SessionAttr.USER_MENUS.getValue());
		
		return "pages/login";
	}
	
}
