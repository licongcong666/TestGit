<section class="content-header">
	<h1>
		${description}
		<small>数据检视</small>
	</h1>
</section>
<section class="content" xmlns:th="http://www.thymeleaf.org">
	<div class="row">
    	<div class="col-xs-12">
        	<div class="box">
	            <div class="box-body">
		            <form role="form" class="form-horizontal">
					<#list columns as po>
						<#if po.isShowForm == 'Y'>
						<fieldset>
						<div class="form-group">
							<label class="col-md-3 control-label">${po.description}:</label>
							<div class="col-md-5">
							<#if po.showType == 'date'>
								<p class="form-control-static" th:text="${'$'}{${'#'}dates.format(${entityName?uncap_first}?.${po.fieldName}, 'yyyy-MM-dd')}"></p>
							<#else>
								<p class="form-control-static" th:text="${'$'}{${entityName?uncap_first}?.${po.fieldName}}"></p>
							</#if>
							</div>
						</div>
						</fieldset>
						</#if>
					</#list>
		            </form>
	            </div>
	            <div class="box-footer">
	            	<div class="col-md-9 col-md-offset-3">
	            		<button type="button" class="btn btn-default" onclick="forwardPage('/${entityName?uncap_first}/init')">返回</button>
			        </div>
	            </div>
	        </div>
		</div>
	</div>
</section>