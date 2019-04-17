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
import com.idp.common.model.PageModel;
import com.idp.common.util.ValidateUtil;
import com.idp.biz.system.entity.SysMenu;
import com.idp.biz.system.entity.SysRole;
import com.idp.biz.system.service.SysMenuService;
import com.idp.biz.system.service.SysRoleService;

/**
 * 角色管理controller
 * 
 * @author King
 *
 */
@Controller
@RequestMapping("/sysRole/")
public class SysRoleController extends BaseController {

	private static Logger logger = LoggerFactory.getLogger(SysRoleController.class);

	@Autowired
	private SysRoleService sysRoleService;
	@Autowired
	private SysMenuService sysMenuService;
	
	/**
	 * 初始化页面
	 * @return
	 */
	@RequestMapping(value="init",method=RequestMethod.GET)
	public String init(){
		
		logger.info("角色管理");
		
		return "system/sysRole/sysRoleList";
	}
	
	/**
	 * 分页查询
	 * @param sysRole
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping(value="list",method=RequestMethod.POST)
	@ResponseBody
	public PageModel<SysRole> list(SysRole sysRole,PageModel<SysRole> page){
		
		return sysRoleService.findByPage(sysRole, page);
	}

	/**
	 * 编辑页面初始化
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping(value="sysRole",method=RequestMethod.GET)
	public String sysRole(String id,HttpServletRequest request){
		
		SysRole sysRole = null;
		List<String> menuIds = null;
		
		if(ValidateUtil.isNotEmpty(id)){
			
			sysRole = sysRoleService.getById(id);
			request.setAttribute("sysRole", sysRole);
			
			menuIds = sysRoleService.findByRoleId(id);
		}
		
		// 菜单信息
		List<Map<String, Object>> roleMenuList = new ArrayList<>();
		List<SysMenu> menuList = sysMenuService.find(new SysMenu());
		if(menuList != null && menuList.size() > 0){
			for(SysMenu menu : menuList){
				Map<String, Object> map = new HashMap<String,Object>();
				map.put("id", menu.getId());
				map.put("name", menu.getMenuName());
				map.put("pId", menu.getParentId());
				
				// 选中角色拥有的菜单权限 
				if(menuIds != null && menuIds.contains(menu.getId())){
					map.put("checked", true);
				}
				else{
					map.put("checked", false);
				}
				
				roleMenuList.add(map);
			}
		}
		request.setAttribute("menuList", roleMenuList);
		
		return "system/sysRole/sysRoleEdit";
	}
	
	/**
	 * 保存
	 * @param sysRole
	 * @return
	 */
	@RequestMapping(value="save",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel save(SysRole sysRole){
		
		JsonModel json = new JsonModel();
		
		// 修改
		if(ValidateUtil.isNotEmpty(sysRole.getId())){
			
			sysRoleService.update(sysRole);
			json.setMessage(SysMessage.COMMON_UPDATE_SUCCESS);
		}
		// 新增
		else{
			
			sysRoleService.add(sysRole);
			json.setMessage(SysMessage.COMMON_ADD_SUCCESS);
		}
		
		return json;
	}
	
	/**
	 * 删除
	 * @param ids
	 * @return
	 */
	@RequestMapping(value="delete",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel delete(String ids){
		
		JsonModel json = new JsonModel();
		
		String message = sysRoleService.delete(ids);
		json.setMessage(message);
		
		return json;
	}
}
