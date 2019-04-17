package ${bizBasePackage}.dao${entityPackage};

import org.apache.ibatis.annotations.Mapper;

import com.idp.common.base.BaseDao;
import ${bizBasePackage}.entity${entityPackage}.${entityName};

/**
 * ${description}dao接口
 * 
 * @author ${author} ${createDate}
 *
 */
@Mapper
public interface ${entityName}Dao extends BaseDao<${entityName}, ${pkType}> {
	
}