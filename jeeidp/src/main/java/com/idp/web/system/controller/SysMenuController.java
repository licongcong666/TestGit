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
import com.idp.biz.system.entity.SysMenu;
import com.idp.biz.system.service.SysMenuService;

/**
 * 菜单管理
 * 
 * @author King
 *
 */
@Controller
@RequestMapping("/sysMenu/")
public class SysMenuController extends BaseController {

	private static Logger logger = LoggerFactory.getLogger(SysMenuController.class);
	
	@Autowired
	private SysMenuService sysMenuService;
	
	
	/**
	 * 初始化查询页面,查询顶级菜单
	 * @param request
	 * @return
	 */
	@RequestMapping(value="init",method=RequestMethod.GET)
	public String init(HttpServletRequest request){
		
		request.setAttribute("menuList", sysMenuService.findForTreeTable("0"));
		
		logger.info("菜单管理");
		
		return "system/sysMenu/sysMenuList";
	}
	
	/**
	 * 查询下级菜单
	 * @param parentId
	 * @return
	 */
	@RequestMapping(value="treeTable",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel treeTable(String parentId){
		JsonModel json = new JsonModel();
		
		json.setData(sysMenuService.findForTreeTable(parentId));
		
		return json;
	}
	
	/**
	 * 维护页面跳转
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping(value="sysMenu",method=RequestMethod.GET)
	public String menu(String id,HttpServletRequest request){
		
		if(ValidateUtil.isNotEmpty(id)){
			request.setAttribute("sysMenu", sysMenuService.getById(id));
		}
		
		return "system/sysMenu/sysMenuEdit";
	}
	
	/**
	 * 获取菜单树状结构
	 * @return
	 */
	@RequestMapping(value="getMenuForTree",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel getMenuForTree(Long currentId){
		JsonModel json = new JsonModel();
		
		List<SysMenu> menuList = sysMenuService.find(new SysMenu());
		List<Map<String, Object>> treeList = new ArrayList<>();
		
		if(menuList != null && menuList.size() > 0){
			for(SysMenu menu : menuList){
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("id", menu.getId());
				map.put("name", menu.getMenuName());
				map.put("pId", menu.getParentId());
				treeList.add(map);
			}
			
			json.setData(treeList);
		}
		
		return json;
	}
	
	/**
	 * 保存数据
	 * @param menu
	 * @return
	 */
	@RequestMapping(value="save",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel save(SysMenu menu){
		JsonModel json = new JsonModel();
		
		if(ValidateUtil.isEmpty(menu.getParentId())){
			menu.setParentId("0");
		}
		
		// 修改
		if(ValidateUtil.isNotEmpty(menu.getId())){
			sysMenuService.update(menu);
			json.setMessage(SysMessage.COMMON_UPDATE_SUCCESS);
		}
		// 新增
		else{
			sysMenuService.add(menu);
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
		
		sysMenuService.delete(id);
		json.setMessage(SysMessage.COMMON_DELETE_SUCCESS);
		
		return json;
	}
}
