<section class="content-header">
	<h1>
		${description}
		<small>数据维护</small>
	</h1>
</section>
<section class="content" xmlns:th="http://www.thymeleaf.org">
	<div class="row">
    	<div class="col-xs-12">
        	<div class="box">
	            <div class="box-body">
		            <form id="${entityName?uncap_first}Form" role="form" class="form-horizontal">
					<#list columns as po>
						<#if po.isShowForm == 'Y'>
						<div class="form-group">
							<label class="col-md-3 control-label">${po.description}:</label>
							<div class="col-md-5">
							<#if po.showType == 'textarea'>
								<textarea name="${po.fieldName}" class="form-control" rows="5" th:text="${'$'}{${entityName?uncap_first}?.${po.fieldName}}" <#if po.formValidType?? && po.formValidType == 'required'>required="required"</#if> maxlength="255"></textarea>
							<#elseif po.showType == 'password'>
								<input type="password" name="${po.fieldName}" class="form-control" th:value="${'$'}{${entityName?uncap_first}?.${po.fieldName}}" <#if po.formValidType?? && po.formValidType == 'required'>required="required"</#if> maxlength="${po.columnLength?if_exists}"/>
							<#elseif po.showType == 'date'>
								<input type="text" name="${po.fieldName}" class="form-control datepicker"
					        	th:value="${'$'}{${'#'}dates.format(${entityName?uncap_first}?.${po.fieldName}, 'yyyy-MM-dd')}" <#if po.formValidType?? && po.formValidType == 'required'>required="required"</#if> readonly="readonly"/>
							<#elseif po.showType == 'select'>
								<select name="${po.fieldName}" class="form-control" th:value="${'$'}{${entityName?uncap_first}?.${po.fieldName}}" <#if po.formValidType?? && po.formValidType == 'required'>required</#if>>
									<option value="">请选择</option>
									<option value="1" th:selected="${'$'}{${entityName?uncap_first}?.${po.fieldName} == '1'}">Option 1</option>
									<option value="2" th:selected="${'$'}{${entityName?uncap_first}?.${po.fieldName} == '2'}">Option 2</option>
									<option value="3" th:selected="${'$'}{${entityName?uncap_first}?.${po.fieldName} == '3'}">Option 3</option>
								</select>
							<#elseif po.showType == 'radio'>
								<div class="radio-list">
									<label class="radio-inline c-radio">
										<input type="radio" name="${po.fieldName}" value="1" th:checked="${'$'}{${entityName?uncap_first}?.${po.fieldName} == '1' || ${entityName?uncap_first} == null}"/>
										<i class="fa fa-check"></i> Option 1 
									</label>
									<label class="radio-inline c-radio">
										<input type="radio" name="${po.fieldName}" value="2" th:checked="${'$'}{${entityName?uncap_first}?.${po.fieldName} == '2'}"/>
										<i class="fa fa-check"></i> Option 2 
									</label>
								</div>
							<#elseif po.showType == 'checkbox'>
								<div class="checkbox-list">
									<label class="checkbox-inline c-checkbox">
										<input type="checkbox" name="${po.fieldName}" value="1"/>
										<i class="fa fa-check"></i> Checkbox 1 
									</label>
									<label class="checkbox-inline c-checkbox">
										<input type="checkbox" name="${po.fieldName}" value="2"/>
										<i class="fa fa-check"></i> Checkbox 2 
									</label>
									<label class="checkbox-inline c-checkbox">
										<input type="checkbox" name="${po.fieldName}" value="3"/>
										<i class="fa fa-check"></i> Checkbox 3 
									</label>
								</div>
							<#else>
								<input type="text" name="${po.fieldName}" class="form-control" th:value="${'$'}{${entityName?uncap_first}?.${po.fieldName}}" <#if po.formValidType?? && po.formValidType == 'required'>required="required"</#if> maxlength="${po.columnLength?if_exists}"/>
							</#if>
							</div>
						</div>
						</#if>
					</#list>
					    <input type="hidden" name="${pkField}" th:value="${'$'}{${entityName?uncap_first}?.${pkField}}"/>
		            </form>
	            </div>
	            <div class="box-footer">
	            	<div class="col-md-9 col-md-offset-3">
						<button type="button" class="btn btn-primary" onclick="save()">保存</button>
			          	<button type="button" class="btn btn-default" onclick="forwardPage('/${entityName?uncap_first}/init')">取消</button>
			        </div>
	            </div>
	        </div>
		</div>
	</div>
	<script th:src="@{/${jsBasePackage}/${entityName?uncap_first}/${entityName?uncap_first}.js}"></script>
</section>