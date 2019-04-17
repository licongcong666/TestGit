package com.idp.web.system.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.idp.common.base.BaseController;
import com.idp.common.constant.SessionAttr;

/**
 * 首页controller
 * 
 * @author King
 *
 */
@Controller
@RequestMapping("/")
public class IndexController extends BaseController {

	private static Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	/**
	 * 主页面
	 * @param request
	 * @return
	 */
	@RequestMapping(value="index",method=RequestMethod.GET)
	public String login(HttpServletRequest request){
		
		String userMenu = (String)request.getSession().getAttribute(SessionAttr.USER_MENUS.getValue());
		request.setAttribute("menus", userMenu);
		
		logger.info("进入主页面");
		
		return "main";
	}
	
	/**
	 * 首页
	 * @param request
	 * @return
	 */
	@RequestMapping(value="home",method=RequestMethod.GET)
	public String home(HttpServletRequest request){
		
		return "pages/home";
	}
		
}
