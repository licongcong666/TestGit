package ${bizBasePackage}.service.impl${entityPackage};

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.idp.common.model.PageModel;
import com.idp.common.util.ResourceEnum;
import com.idp.common.util.ResourceUtil;
import ${bizBasePackage}.service${entityPackage}.${entityName}Service;
import ${bizBasePackage}.dao${entityPackage}.${entityName}Dao;
import ${bizBasePackage}.entity${entityPackage}.${entityName};

/**
 * ${description}service实现类
 * 
 * @author ${author} ${createDate}
 *
 */
@Service("${entityName?uncap_first}Service")
public class ${entityName}ServiceImpl implements ${entityName}Service {

	@Autowired
	private ${entityName}Dao ${entityName?uncap_first}Dao;
	
	@Override
	public PageModel<${entityName}> findByPage(${entityName} ${entityName?uncap_first}, PageModel<${entityName}> page) {

		PageHelper.offsetPage(page.getStart(), page.getLength());
		page.initData(${entityName?uncap_first}Dao.findByPage(${entityName?uncap_first}));
		
		return page;
	}
	
	@Override
	public List<${entityName}> findBySearch(${entityName} ${entityName?uncap_first}) {

		return ${entityName?uncap_first}Dao.find(${entityName?uncap_first});
	}
	
	@Override
	public ${entityName} getById(${pkType} ${pkField}) {

		return ${entityName?uncap_first}Dao.getById(${pkField});
	}

	@Override
	public void add(${entityName} ${entityName?uncap_first}) {

		${entityName?uncap_first}.set${pkField?cap_first}(ResourceUtil.getUUID());
		${entityName?uncap_first}Dao.add(${entityName?uncap_first});
	}
	
	@Override
	public void update(${entityName} ${entityName?uncap_first}) {

		${entityName?uncap_first}Dao.update(${entityName?uncap_first});
	}

	@Override
	public void delete(String ids) {

		List<String> idList = Arrays.asList(ids.split(","));
		
		${entityName?uncap_first}Dao.batchDelete(idList);
	}
 	
}