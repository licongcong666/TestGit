package ${controlBasePackage}.controller${entityPackage};

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
import ${bizBasePackage}.entity${entityPackage}.${entityName};
import ${bizBasePackage}.service${entityPackage}.${entityName}Service;

 /**
 * ${description}controller
 * 
 * @author King ${createDate}
 *
 */
@Controller
@RequestMapping("/${entityName?uncap_first}/")
public class ${entityName}Controller extends BaseController {

	private static Logger logger = LoggerFactory.getLogger(${entityName}Controller.class);

	@Autowired
	private ${entityName}Service ${entityName?uncap_first}Service;
	
	/**
	 * 初始化查询页面
	 * ${author} ${createDate}
	 * @return
	 */
	@RequestMapping(value="init",method=RequestMethod.GET)
	public String init(){
		
		logger.info("${description}");
		
		return "${pageBasePackage}/${entityName?uncap_first}/${entityName?uncap_first}List";
	}
	
	/**
	 * 分页查询
	 * ${author} ${createDate}
	 * @param ${entityName?uncap_first}
	 * @param page
	 * @return
	 */
	@RequestMapping(value="list",method=RequestMethod.POST)
	@ResponseBody
	public PageModel<${entityName}> list(${entityName} ${entityName?uncap_first},PageModel<${entityName}> page){
		
		return ${entityName?uncap_first}Service.findByPage(${entityName?uncap_first}, page);
	}

	/**
	 * 新增修改页面初始化
	 * ${author} ${createDate}
	 * @param ${pkField}
	 * @param request
	 * @return
	 */
	@RequestMapping(value="${entityName?uncap_first}",method=RequestMethod.GET)
	public String ${entityName?uncap_first}(${pkType} ${pkField},HttpServletRequest request){
		
		if(ValidateUtil.isNotEmpty(${pkField})){
			
			${entityName} ${entityName?uncap_first} = ${entityName?uncap_first}Service.getById(${pkField});
			request.setAttribute("${entityName?uncap_first}", ${entityName?uncap_first});
		}
		
		return "${pageBasePackage}/${entityName?uncap_first}/${entityName?uncap_first}Edit";
	}
	
	/**
	 * 检视
	 * ${author} ${createDate}
	 * @param ${pkField}
	 * @param request
	 * @return
	 */
	@RequestMapping(value="view",method=RequestMethod.GET)
	public String view(${pkType} ${pkField},HttpServletRequest request){
		
		if(ValidateUtil.isNotEmpty(${pkField})){
				
			${entityName} ${entityName?uncap_first} = ${entityName?uncap_first}Service.getById(${pkField});
			request.setAttribute("${entityName?uncap_first}", ${entityName?uncap_first});
		}
	
		return "${pageBasePackage}/${entityName?uncap_first}/${entityName?uncap_first}View";
	}
	
	/**
	 * 保存
	 * ${author} ${createDate}
	 * @param ${entityName?uncap_first}
	 * @return
	 */
	@RequestMapping(value="save",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel save(${entityName} ${entityName?uncap_first}){
		
		JsonModel json = new JsonModel();
		
		// 修改
		if(ValidateUtil.isNotEmpty(${entityName?uncap_first}.get${pkField?cap_first}())){
			
			${entityName?uncap_first}Service.update(${entityName?uncap_first});
			json.setMessage(SysMessage.COMMON_UPDATE_SUCCESS);
		}
		// 新增
		else{
			
			${entityName?uncap_first}Service.add(${entityName?uncap_first});
			json.setMessage(SysMessage.COMMON_ADD_SUCCESS);
		}
		
		return json;
	}
	
	/**
	 * 删除
	 * ${author} ${createDate}
	 * @param ${pkField}
	 * @return
	 */
	@RequestMapping(value="delete",method=RequestMethod.POST)
	@ResponseBody
	public JsonModel delete(String ids){
		
		JsonModel json = new JsonModel();
		
		${entityName?uncap_first}Service.delete(ids);
		json.setMessage(SysMessage.COMMON_DELETE_SUCCESS);
		
		return json;
	}
}
