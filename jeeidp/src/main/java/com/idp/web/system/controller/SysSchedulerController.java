package com.idp.web.system.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idp.biz.system.entity.SysScheduler;
import com.idp.biz.system.service.SysSchedulerService;
import com.idp.common.base.BaseController;
import com.idp.common.constant.SysMessage;
import com.idp.common.model.JsonModel;
import com.idp.common.model.PageModel;
import com.idp.common.util.ValidateUtil;
import com.idp.scheduler.quartz.config.SchedulerUtil;

 /**
 * 定时任务controller
 * 
 * @author King 2018-06-27
 *
 */
@Controller
@RequestMapping("/sysScheduler/")
public class SysSchedulerController extends BaseController {

	private static Logger logger = LoggerFactory.getLogger(SysSchedulerController.class);

	@Autowired
	private SysSchedulerService sysSchedulerService;
	
	/**
	 * 初始化查询页面
	 * King 2018-06-27
	 * @return
	 */
	@RequestMapping(value="init",method=RequestMethod.GET)
	public String init(){
		
		logger.info("定时任务");
		
		return "system/sysScheduler/sysSchedulerList";
	}
	
	/**
	 * 分页查询
	 * King 2018-06-27
	 * @param sysScheduler
	 * @param page
	 * @return
	 */
	@RequestMapping(value="list",method=RequestMethod.POST)
	@ResponseBody
	public PageModel<SysScheduler> list(SysScheduler sysScheduler,PageModel<SysScheduler> page){
		
		return sysSchedulerService.findByPage(sysScheduler, page);
	}

	/**
	 * 新增修改页面初始化
	 * King 2018-06-27
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping(value="sysScheduler",method=RequestMethod.GET)
	public String sysScheduler(String id,HttpServletRequest request){
		
		if(ValidateUtil.isNotEmpty(id)){
			
			SysScheduler sysScheduler = sysSchedulerService.getById(id);
			request.setAttribute("sysScheduler", sysScheduler);
		}
		
		return "system/sysScheduler/sysSchedulerEdit";
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
			
			SysScheduler sysScheduler = sysSchedulerService.getById(id);
			request.setAttribute("sysScheduler", sysScheduler);
		}
		
		return "system/sysScheduler/sysSchedulerView";
	}
	
	/**
	 * 保存
	 * King 2018-06-27
	 * @param sysScheduler
	 * @return
	 */
	@RequestMapping(value="save",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel save(SysScheduler sysScheduler) throws Exception {
		
		JsonModel json = new JsonModel();
		
		boolean checkCron = SchedulerUtil.isValidExpression(sysScheduler.getCron());
		 
		if(checkCron) {
			
			// 修改
			if(ValidateUtil.isNotEmpty(sysScheduler.getId())){
				
				String message = sysSchedulerService.update(sysScheduler);
				json.setMessage(message);
			}
			// 新增
			else{
				
				boolean checkClass = SchedulerUtil.isExistClass(sysScheduler.getJobClass());
				
				if(checkClass) {
				
					sysSchedulerService.add(sysScheduler);
					json.setMessage(SysMessage.COMMON_ADD_SUCCESS);
				
				} else {
					
					json.setSuccess(false);
					json.setMessage(SysMessage.SCHEDULER_CLASS_NOT_EXIST);
				}
			}
		} else {
			
			json.setSuccess(false);
			json.setMessage(SysMessage.SCHEDULER_CRON_ERROR);
		}
		
		return json;
	}
	
	/**
	 * 删除
	 * King 2018-06-27
	 * @param id
	 * @return
	 */
	@RequestMapping(value="delete",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel delete(String ids) throws Exception {
		
		JsonModel json = new JsonModel();
		
		sysSchedulerService.delete(ids);
		json.setMessage(SysMessage.COMMON_DELETE_SUCCESS);
		
		return json;
	}
	
	/**
	 * 启用/禁用
	 * King 2018-06-27
	 * @param sysScheduler
	 * @return
	 */
	@RequestMapping(value="enableScheduler",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel enableScheduler(SysScheduler sysScheduler) throws Exception {
		
		JsonModel json = new JsonModel();
		
		String message = sysSchedulerService.enable(sysScheduler);
		json.setMessage(message);
		
		return json;
	}
}
