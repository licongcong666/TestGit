package com.idp.web.system.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.idp.common.util.ValidateUtil;
import com.idp.biz.system.entity.SysOrg;
import com.idp.biz.system.service.SysOrgService;

/**
 * 组织管理controller
 * 
 * @author King
 *
 */
@Controller
@RequestMapping("/sysOrg/")
public class SysOrgController extends BaseController {

	private static Logger logger = LoggerFactory.getLogger(SysOrgController.class);
	
	@Autowired
	private SysOrgService sysOrgService;
	
	/**
	 * 查询页面初始化，查询顶级组织
	 * @param request
	 * @return
	 */
	@RequestMapping(value="init",method=RequestMethod.GET)
	public String init(HttpServletRequest request){
		
		request.setAttribute("orgList", sysOrgService.findForTreeTable("0"));
		
		logger.info("组织管理");
		
		return "system/sysOrg/sysOrgList";
	}
	
	/**
	 * 查询下级组织
	 * @param parentId
	 * @return
	 */
	@RequestMapping(value="treeTable",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel treeTable(String parentId){
		JsonModel json = new JsonModel();
		
		json.setData(sysOrgService.findForTreeTable(parentId));
		
		return json;
	}
	
	/**
	 * 维护页面跳转
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping(value="sysOrg",method=RequestMethod.GET)
	public String sysOrg(String id,HttpServletRequest request){
		
		if(ValidateUtil.isNotEmpty(id)){
			request.setAttribute("sysOrg", sysOrgService.getById(id));
		}
		
		return "system/sysOrg/sysOrgEdit";
	}
	
	/**
	 * 获取组织树状结构
	 * @param currentId
	 * @return
	 */
	@RequestMapping(value="getOrgForTree",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel getOrgForTree(String currentId){
		JsonModel json = new JsonModel();
		
		List<SysOrg> orgList = sysOrgService.find(new SysOrg());
		List<Map<String, Object>> treeList = new ArrayList<>();
		
		if(orgList != null && orgList.size() > 0){
			for(SysOrg org : orgList){
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("id", org.getId());
				map.put("name", org.getOrgName());
				map.put("pId", org.getParentId());
				treeList.add(map);
			}
			json.setData(treeList);
		}
		
		return json;
	}
	
	/**
	 * 保存数据
	 * @param sysOrg
	 * @return
	 */
	@RequestMapping(value="save",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel save(SysOrg sysOrg){
		JsonModel json = new JsonModel();
		
		if(ValidateUtil.isEmpty(sysOrg.getParentId())){
			sysOrg.setParentId("0");
		}
		
		// 修改
		if(ValidateUtil.isNotEmpty(sysOrg.getId())){
			sysOrgService.update(sysOrg);
			json.setMessage(SysMessage.COMMON_UPDATE_SUCCESS);
		}
		// 新增
		else{
			sysOrgService.add(sysOrg);
			json.setMessage(SysMessage.COMMON_ADD_SUCCESS);
		}
		
		return json;
	}
	
	/**
	 * 删除数据
	 * @param id
	 * @return
	 */
	@RequestMapping(value="delete",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel delete(String id){
		JsonModel json = new JsonModel();
		
		sysOrgService.delete(id);
		json.setMessage(SysMessage.COMMON_DELETE_SUCCESS);
		
		return json;
	}
}
