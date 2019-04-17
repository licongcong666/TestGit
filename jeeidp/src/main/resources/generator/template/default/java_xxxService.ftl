package ${bizBasePackage}.service${entityPackage};

import java.util.List;

import com.idp.common.model.PageModel;
import ${bizBasePackage}.entity${entityPackage}.${entityName};

/**
 * ${description}service接口
 * 
 * @author ${author} ${createDate}
 *
 */
public interface ${entityName}Service{
	
	/**
	 * 分页查询
	 * ${author} ${createDate}
	 * @param ${entityName?uncap_first}
	 * @param page
	 * @return
	 */
	public PageModel<${entityName}> findByPage(${entityName} ${entityName?uncap_first},PageModel<${entityName}> page);
	
	/**
	 * 条件查询
	 * ${author} ${createDate}
	 * @param ${entityName?uncap_first}
	 * @return
	 */
	public List<${entityName}> findBySearch(${entityName} ${entityName?uncap_first});
	
	/**
	 * 通过PK查询
	 * ${author} ${createDate}
	 * @param ${pkField}
	 * @return
	 */
	public ${entityName} getById(${pkType} ${pkField});
	
	/**
	 * 新增
	 * ${author} ${createDate}
	 * @param ${entityName?uncap_first}
	 */
	public void add(${entityName} ${entityName?uncap_first});

	/**
	 * 修改
	 * ${author} ${createDate}
	 * @param ${entityName?uncap_first}
	 */
	public void update(${entityName} ${entityName?uncap_first});
	
	/**
	 * 删除
	 * ${author} ${createDate}
	 * @param ${pkField}s
	 */
	public void delete(String ids);
}
