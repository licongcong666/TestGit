package com.idp.web.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idp.biz.demo.entity.DemoTest;
import com.idp.biz.demo.service.DemoTestService;
import com.idp.biz.system.entity.SysDictionary;
import com.idp.biz.system.service.SysDictionaryService;
import com.idp.common.base.BaseController;
import com.idp.common.constant.SysMessage;
import com.idp.common.model.JsonModel;
import com.idp.common.model.PageModel;
import com.idp.common.util.ValidateUtil;

 /**
 * 测试功能controller
 * 
 * @author King 2018-06-03
 *
 */
@Controller
@RequestMapping("/demoTest/")
public class DemoTestController extends BaseController {

	private static Logger logger = LoggerFactory.getLogger(DemoTestController.class);

	@Autowired
	private DemoTestService demoTestService;
	@Autowired
	private SysDictionaryService sysDictionaryService;
	
	/**
	 * 初始化查询页面
	 * King 2018-06-03
	 * @return
	 */
	@RequestMapping(value="init",method=RequestMethod.GET)
	public String init(){
		
		logger.info("测试功能");
		
		return "demo/demoTest/demoTestList";
	}
	
	/**
	 * 分页查询
	 * King 2018-06-03
	 * @param demoTest
	 * @param page
	 * @return
	 */
	@RequestMapping(value="list",method=RequestMethod.POST)
	@ResponseBody
	public PageModel<DemoTest> list(DemoTest demoTest,PageModel<DemoTest> page){
		
		return demoTestService.findByPage(demoTest, page);
	}

	/**
	 * 新增修改页面初始化
	 * King 2018-06-03
	 * @param demoId
	 * @param request
	 * @return
	 */
	@RequestMapping(value="demoTest",method=RequestMethod.GET)
	public String demoTest(String demoId,HttpServletRequest request){
		
		if(ValidateUtil.isNotEmpty(demoId)){
			
			DemoTest demoTest = demoTestService.getById(demoId);
			request.setAttribute("demoTest", demoTest);
		}
		
//		String a = null;
//		a.length();
		
		SysDictionary sexs = sysDictionaryService.getByCode("sex");
		if(sexs != null) {
			
			request.setAttribute("sexs", sexs.getChildren());
		}
		
		return "demo/demoTest/demoTestEdit";
	}
	
	/**
	 * 检视
	 * King 2018-06-03
	 * @param demoId
	 * @param request
	 * @return
	 */
	@RequestMapping(value="view",method=RequestMethod.GET)
	public String view(String demoId,HttpServletRequest request){
		
		if(ValidateUtil.isNotEmpty(demoId)){
			
			DemoTest demoTest = demoTestService.getById(demoId);
			request.setAttribute("demoTest", demoTest);
		}
		
		return "demo/demoTest/demoTestView";
	}
	
	/**
	 * 保存
	 * King 2018-06-03
	 * @param demoTest
	 * @return
	 */
	@RequestMapping(value="save",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel save(DemoTest demoTest){
		
		JsonModel json = new JsonModel();
		
		// 修改
		if(ValidateUtil.isNotEmpty(demoTest.getDemoId())){
			
			demoTestService.update(demoTest);
			json.setMessage(SysMessage.COMMON_UPDATE_SUCCESS);
		}
		// 新增
		else{
			
			demoTestService.add(demoTest);
			json.setMessage(SysMessage.COMMON_ADD_SUCCESS);
		}
		
		return json;
	}
	
	/**
	 * 删除
	 * King 2018-06-03
	 * @param demoId
	 * @return
	 */
	@RequestMapping(value="delete",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel delete(String ids){
		
		JsonModel json = new JsonModel();
		
		demoTestService.delete(ids);
		json.setMessage(SysMessage.COMMON_DELETE_SUCCESS);
		
		return json;
	}
}
