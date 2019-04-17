package com.idp.web.system.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idp.biz.system.entity.SysRole;
import com.idp.biz.system.entity.SysUser;
import com.idp.biz.system.service.SysRoleService;
import com.idp.biz.system.service.SysUserService;
import com.idp.common.base.BaseController;
import com.idp.common.constant.SysMessage;
import com.idp.common.model.JsonModel;
import com.idp.common.model.PageModel;
import com.idp.common.model.UploadModel;
import com.idp.common.util.UploadUtil;
import com.idp.common.util.ValidateUtil;

/**
 * 用户管理controller
 * 
 * @author King
 *
 */
@Controller
@RequestMapping("/sysUser/")
public class SysUserController extends BaseController {

	private static Logger logger = LoggerFactory.getLogger(SysUserController.class);

	@Autowired
	private SysUserService sysUserService;
	@Autowired
	private SysRoleService sysRoleService;
	
	/**
	 * 初始化查询页面
	 * @return
	 */
	@RequestMapping(value="init",method=RequestMethod.GET)
	public String init(){
		
		logger.info("用户管理");
		
		return "system/sysUser/sysUserList";
	}
	
	/**
	 * 分页查询
	 * @param sysUser
	 * @param page
	 * @return
	 */
	@RequestMapping(value="list",method=RequestMethod.POST)
	@ResponseBody
	public PageModel<SysUser> list(SysUser sysUser,PageModel<SysUser> page){
		
		return sysUserService.findByPage(sysUser, page);
	}

	/**
	 * 新增修改页面初始化
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping(value="sysUser",method=RequestMethod.GET)
	public String sysUser(String id,HttpServletRequest request){
		
		List<String> roleIds = null;
		
		if(ValidateUtil.isNotEmpty(id)){
			
			SysUser sysUser = sysUserService.getById(id);
			request.setAttribute("sysUser", sysUser);
			
			roleIds = sysUserService.findByUserId(id);
		}
		
		List<SysRole> roleList = sysRoleService.findBySearch(new SysRole());
		if(roleIds != null){
			for(SysRole role : roleList){
				if(roleIds.contains(role.getId())){
					role.setUserHas(true);
				}
			}
		}
		
		request.setAttribute("roleList", roleList);
		
		return "system/sysUser/sysUserEdit";
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
			
			SysUser sysUser = sysUserService.getById(id);
			request.setAttribute("sysUser", sysUser);
		}
		
		return "system/sysUser/sysUserView";
	}
	
	/**
	 * 保存
	 * @param request
	 * @return
	 */
	@RequestMapping(value="save",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel save(HttpServletRequest request) throws Exception {
		
		JsonModel json = new JsonModel();
		
		try {
			
			SysUser sysUser = new SysUser();
			UploadModel model = new UploadModel(UploadUtil.getServerUploadBasePath(UploadUtil.PATH_IMAGES), 
					UploadModel.IMAGES, sysUser);
			UploadUtil.uploadFileSealedObject(request, model);
			
			if(model.isSuccess()){
				
				// 修改
				if(ValidateUtil.isNotEmpty(sysUser.getId())){
					
					sysUserService.update(sysUser);
					json.setMessage(SysMessage.COMMON_UPDATE_SUCCESS);
				}
				// 新增
				else{
					
					sysUserService.add(sysUser);
					json.setMessage(SysMessage.COMMON_ADD_SUCCESS);
				}
			}
			else{
				
				json.setMessage(model.getMessage());
			}
			
		} catch (Exception e) {
			
			throw e;
		}
		
		return json;
	}
	
	/**
	 * 重置密码
	 * @param id
	 * @return
	 */
	@RequestMapping(value="resetPwd",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel resetPwd(String ids){
		
		JsonModel json = new JsonModel();
		
		sysUserService.resetPwd(ids);
		json.setMessage(SysMessage.USER_PWD_RESET_SUCCESS);
		
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
		
		sysUserService.delete(ids);
		json.setMessage(SysMessage.COMMON_DELETE_SUCCESS);
		
		return json;
	}
	
	/**
	 * 个人修改信息
	 * @param request
	 * @return
	 */
	@RequestMapping(value="updateByOneself",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel updateByOneself(HttpServletRequest request) throws Exception {
		
		JsonModel json = new JsonModel();
		
		try {
			
			SysUser sysUser = new SysUser();
			UploadModel model = new UploadModel(UploadUtil.getServerUploadBasePath(UploadUtil.PATH_IMAGES), 
					UploadModel.IMAGES, sysUser);
			UploadUtil.uploadFileSealedObject(request, model);
			
			if(model.isSuccess()){
				
				// 修改
				if(ValidateUtil.isNotEmpty(sysUser.getId())){
					
					sysUserService.updateByOneself(sysUser);
					json.setMessage(SysMessage.COMMON_UPDATE_SUCCESS);
				}
			}
			else{
				
				json.setMessage(model.getMessage());
			}
			
		} catch (Exception e) {
			
			throw e;
		}
		
		return json;
	}
	
	/**
	 * 个人修改密码
	 * @param request
	 * @return
	 */
	@RequestMapping(value="updatePassword",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel updatePassword(SysUser sysUser){
		
		JsonModel json = new JsonModel();
		
		// 修改
		if(ValidateUtil.isNotEmpty(sysUser.getId())){
			
			String message = sysUserService.updatePassword(sysUser); 
			json.setMessage(message);
		}
		
		return json;
	}
}
