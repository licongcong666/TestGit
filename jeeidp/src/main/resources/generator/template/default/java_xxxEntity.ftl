package ${bizBasePackage}.entity${entityPackage};

import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.idp.common.base.BaseEntity;

/**
 * ${description}实体类
 * 
 * @author ${author} ${createDate}
 *
 */
public class ${entityName} extends BaseEntity implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	<#list columns as po>
	/**${po.description}*/
	private ${po.fieldType} ${po.fieldName};
	</#list>
	
	<#list columns as po>
	<#if po.queryMode == 'group'>
	/**${po.description}开始*/
	private ${po.fieldType} ${po.fieldName}Start;
	/**${po.description}结束*/
	private ${po.fieldType} ${po.fieldName}End;
	</#if>
	</#list>
	
	<#list columns as po>
	/**
	 *方法: 取得${po.fieldType}
	 *@return: ${po.fieldType}  ${po.description}
	 */
	public ${po.fieldType} get${po.fieldName?cap_first}(){
		return this.${po.fieldName};
	}

	/**
	 *方法: 设置${po.fieldType}
	 *@param: ${po.fieldType}  ${po.description}
	 */
	public void set${po.fieldName?cap_first}(${po.fieldType} ${po.fieldName}){
		this.${po.fieldName} = ${po.fieldName};
	}
	
	</#list>
	
	<#list columns as po>
	<#if po.queryMode == 'group'>
	/**
	 *方法: 取得${po.fieldType}
	 *@return: ${po.fieldType}  ${po.description}开始
	 */
	public ${po.fieldType} get${po.fieldName?cap_first}Start(){
		return this.${po.fieldName}Start;
	}

	/**
	 *方法: 设置${po.fieldType}
	 *@param: ${po.fieldType}  ${po.description}开始
	 */
	public void set${po.fieldName?cap_first}Start(${po.fieldType} ${po.fieldName}Start){
		this.${po.fieldName}Start = ${po.fieldName}Start;
	}
	
	/**
	 *方法: 取得${po.fieldType}
	 *@return: ${po.fieldType}  ${po.description}结束
	 */
	public ${po.fieldType} get${po.fieldName?cap_first}End(){
		return this.${po.fieldName}End;
	}

	/**
	 *方法: 设置${po.fieldType}
	 *@param: ${po.fieldType}  ${po.description}结束
	 */
	public void set${po.fieldName?cap_first}End(${po.fieldType} ${po.fieldName}End){
		this.${po.fieldName}End = ${po.fieldName}End;
	}
	
	</#if>
	</#list>
	
	@Override
	public String toString() {

		return "${description}：[" <#list columns as po> + "<#if po_index != 0>, </#if>${po.description}=" + ${po.fieldName}</#list><#list columns as po><#if po.queryMode == 'group'> + ",${po.description}(开始)=" + ${po.fieldName}Start + ",${po.description}(结束)=" + ${po.fieldName}End</#if></#list> + "]";
	}
}
