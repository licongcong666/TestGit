package com.idp.web.system.controller;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idp.common.base.BaseController;
import com.idp.common.constant.SysMessage;
import com.idp.common.model.JsonModel;
import com.idp.common.model.PageModel;
import com.idp.common.util.ValidateUtil;
import com.idp.biz.system.entity.SysDictionary;
import com.idp.biz.system.service.SysDictionaryService;

/**
 * 数据字典controller
 * 
 * @author King
 *
 */
@Controller
@RequestMapping("/sysDictionary/")
public class SysDictionaryController extends BaseController {

	private static Logger logger = LoggerFactory.getLogger(SysDictionaryController.class);

	@Autowired
	private SysDictionaryService sysDictionaryService;
	
	/**
	 * 初始化查询页面
	 * @return
	 */
	@RequestMapping(value="init",method=RequestMethod.GET)
	public String init(){
		
		logger.info("数据字典");
		
		return "system/sysDictionary/sysDictionaryList";
	}
	
	/**
	 * 分页查询
	 * @param sysDictionary
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping(value="list",method=RequestMethod.POST)
	@ResponseBody
	public PageModel<SysDictionary> list(SysDictionary sysDictionary,PageModel<SysDictionary> page){
		
		return sysDictionaryService.findByPage(sysDictionary, page);
	}

	/**
	 * 新增修改页面初始化
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping(value="sysDictionary",method=RequestMethod.GET)
	public String sysDictionary(String id,HttpServletRequest request){
		
		if(ValidateUtil.isNotEmpty(id)){
			
			SysDictionary sysDictionary = sysDictionaryService.getById(id);
			request.setAttribute("sysDictionary", sysDictionary);
		}
		
		return "system/sysDictionary/sysDictionaryEdit";
	}
	
	/**
	 * 检视
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping(value="view",method=RequestMethod.GET)
	public String view(String id,HttpServletRequest request){
		
		if(ValidateUtil.isNotEmpty(id)){
			
			SysDictionary sysDictionary = sysDictionaryService.getById(id);
			request.setAttribute("sysDictionary", sysDictionary);
		}
		
		return "system/sysDictionary/sysDictionaryView";
	}
	
	/**
	 * 保存
	 * @param sysDictionary
	 * @return
	 */
	@RequestMapping(value="save",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel save(SysDictionary sysDictionary){
		
		JsonModel json = new JsonModel();
		
		// 修改
		if(ValidateUtil.isNotEmpty(sysDictionary.getId())){
			
			sysDictionaryService.update(sysDictionary);
			json.setMessage(SysMessage.COMMON_UPDATE_SUCCESS);
		}
		// 新增
		else{
			
			sysDictionaryService.add(sysDictionary);
			json.setMessage(SysMessage.COMMON_ADD_SUCCESS);
		}
		
		return json;
	}
	
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@RequestMapping(value="delete",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel delete(String ids){
		
		JsonModel json = new JsonModel();
		
		String[] idss = ids.split(",");
		
		if(idss != null && idss.length > 0){
			
			for(String id : idss){
				
				SysDictionary sysDictionary = sysDictionaryService.getById(id);
				
				sysDictionaryService.delete(sysDictionary);
			}
		}
		json.setMessage(SysMessage.COMMON_DELETE_SUCCESS);
		
		return json;
	}
}
