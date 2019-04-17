<section class="content-header">
	<h1>
		${description}
    	<small>数据列表</small>
	</h1>
</section>
<section class="content" xmlns:th="http://www.thymeleaf.org">
	<div class="row">
    	<div class="col-xs-12">
        	<div class="box">
	            <div class="box-header">
	              	<form id="${entityName?uncap_first}SearchForm" role="form" class="form-inline form-search">
	              	<#list columns as po>
	  					<#if po.isQuery == 'Y'>
	  						<#if po.queryMode == 'single'>
          						<#if po.showType == 'date'>
      					<div class="form-group">
          					<label class="control-label">${po.description}：</label>
          					<input type="text" id="${po.fieldName}" class="form-control datepicker" readonly="readonly"/>
						</div>
								<#elseif po.showType == 'radio' || po.showType == 'checkbox' || po.showType == 'select'>
						<div class="form-group">
							<label class="control-label">${po.description}：</label>
							<select id="${po.fieldName}" class="form-control">
								<option value="">全部</option>
								<option value="1">Option 1</option>
								<option value="2">Option 2</option>
							</select>
						</div>
								<#else>
						<div class="form-group">
							<label class="control-label">${po.description}：</label>
							<input type="text" id="${po.fieldName}" class="form-control" />
						</div>
								</#if>
							<#else>
								<#if po.showType == 'date'>
						<div class="form-group">
							<label class="control-label">${po.description}：</label>
							<input type="text" id="${po.fieldName}Start" class="form-control datepicker" readonly="readonly" style="width:100px;"/>
							-
							<input type="text" id="${po.fieldName}End" class="form-control datepicker" readonly="readonly" style="width:100px;"/>
						</div>
								<#else>
						<div class="form-group">
							<label class="control-label">${po.description}：</label>
							<input type="text" id="${po.fieldName}Start" class="form-control" style="width:100px;"/> 
							-
							<input type="text" id="${po.fieldName}End" class="form-control" style="width:100px;"/>
						</div>
           						</#if>
       						</#if>
	    				</#if>
	    			</#list>
					</form>
					<button type="button" id="addBtn" class="btn btn-success">
						<i class="fa fa-plus icon-right-5"></i>新增
					</button>
					<button type="button" id="delBtn" class="btn btn-danger">
						<i class="fa fa-trash-o icon-right-5"></i>删除
					</button>
			      	<button type="button" id="resetBtn" class="pull-right btn btn-default">
			          	<i class="fa fa-refresh icon-right-5"></i>重置
			      	</button>
			      	<button type="button" id="searchBtn" class="pull-right btn btn-primary icon-right-5">
			          	<i class="fa fa-search icon-right-5"></i>查询
			      	</button>
	            </div>
            	<div class="box-body">
	            	<table id="${entityName?uncap_first}DataTable" class="table table-bordered table-hover">
	            		<thead>
	            			<tr>
	            				<th><input type="checkbox" class="checkAll" onclick="checkAll(this)"/></th>
	            				<#list columns as po>
								<#if po.isShowList == 'Y'>
								<th>${po.description}</th>
								</#if>
								</#list>
	            				<th>操作</th>
	            			</tr>
	            		</thead>
	            	</table>
            	</div>
        	</div>
		</div>
	</div>
	<script th:src="@{/${jsBasePackage}/${entityName?uncap_first}/${entityName?uncap_first}List.js}"></script>
</section>