package com.idp.web.system.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idp.biz.system.entity.SysLog;
import com.idp.biz.system.service.SysLogService;
import com.idp.biz.system.service.SysUserService;
import com.idp.common.base.BaseController;
import com.idp.common.model.PageModel;
import com.idp.common.util.ValidateUtil;

 /**
 * 系统日志controller
 * 
 * @author King 2018-06-27
 *
 */
@Controller
@RequestMapping("/sysLog/")
public class SysLogController extends BaseController {

	private static Logger logger = LoggerFactory.getLogger(SysLogController.class);

	@Autowired
	private SysLogService sysLogService;
	@Autowired
	private SysUserService sysUserService;
	
	/**
	 * 初始化查询页面
	 * King 2018-06-27
	 * @return
	 */
	@RequestMapping(value="init",method=RequestMethod.GET)
	public String init(HttpServletRequest request){
		
		request.setAttribute("userList", sysUserService.findAllUser());
		
		logger.info("系统日志");
		
		return "system/sysLog/sysLogList";
	}
	
	/**
	 * 分页查询
	 * King 2018-06-27
	 * @param sysLog
	 * @param page
	 * @return
	 */
	@RequestMapping(value="list",method=RequestMethod.POST)
	@ResponseBody
	public PageModel<SysLog> list(SysLog sysLog,PageModel<SysLog> page){
		
		return sysLogService.findByPage(sysLog, page);
	}

	/**
	 * 检视
	 * King 2018-06-27
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping(value="view",method=RequestMethod.GET)
	public String view(String id,HttpServletRequest request){
		
		if(ValidateUtil.isNotEmpty(id)){
			
			SysLog sysLog = sysLogService.getById(id);
			
			sysLog.setLogContent(sysLog.getLogContent().replace("\n", "<br/>"));
			
			request.setAttribute("sysLog", sysLog);
		}
		
		return "system/sysLog/sysLogView";
	}
	
}
