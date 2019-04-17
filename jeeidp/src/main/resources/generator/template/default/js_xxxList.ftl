${'$'}(function(){
	var dataTable = ${'$'}("${'#'}${entityName?uncap_first}DataTable").DataTable({
		"ajax": {
			"url": '/${entityName?uncap_first}/list',
			"data": function(data){
				<#list columns as po>
					<#if po.isQuery == 'Y'>
						<#if po.queryMode == 'single'>
				data.${po.fieldName} = ${'$'}("${'#'}${po.fieldName}").val();
						<#else>
				data.${po.fieldName}Start = ${'$'}("${'#'}${po.fieldName}Start").val();
				data.${po.fieldName}End = ${'$'}("${'#'}${po.fieldName}End").val();
						</#if>
					</#if>
				</#list>
			}
		},
		"ordering": false,
		"columns": [
			{
				"data": "${pkField}",
				"className": "text-center sign-col",
				"render": function(data, type, row, meta){
					
					return '<input type="checkbox" name="pk" value="' + data + '" onclick="checkOne()"/>';
				}
			},
			<#list columns as po>
				<#if po.isShowList == 'Y'>
					<#if po.showType == 'date'>
			{
				"data": function(obj){
					
					return new Date(obj.${po.fieldName}).Format("yyyy-MM-dd");
				} 
			},
					<#else>
			{"data": "${po.fieldName}"},
					</#if>
				</#if>
			</#list>
			{
				"data": "${pkField}",
				"className": "operate-col",
				"render": function(data, type, row, meta){
					
					var html = '<button type="button" onclick="edit(\''+ data +'\')" class="btn btn-sm btn-warning right-5">'
						+ '<i class="fa fa-edit"></i>'
						+ '</button>'
						+ '<button type="button" onclick="view(\''+ data +'\')" class="btn btn-sm btn-info">'
                    	+ '<i class="fa fa-search"></i>'
                    	+ '</button>';
					return html;
				}
			}
		]
	});
	
	${'$'}('${'#'}searchBtn').click(function(){
		
		dataTable.ajax.reload();
	});
	
	${'$'}('${'#'}resetBtn').click(function(){
		
		${'$'}('${'#'}${entityName?uncap_first}SearchForm')[0].reset();
		dataTable.ajax.reload();
	});
	
	${'$'}('${'#'}addBtn').click(function(){
		
		forwardPage('/${entityName?uncap_first}/${entityName?uncap_first}');
	});
	
	${'$'}('${'#'}delBtn').click(function(){
		
		ajaxBySelecteRows(dataTable,'/${entityName?uncap_first}/delete','确定要删除？');
	});
	
	// 日期
	$('.datepicker').datetimepicker({
		language: 'zh-CN',
		format: 'yyyy-mm-dd',
		autoclose: true,
		todayBtn: true,
		clearBtn:true,
		minView: 2
	});
});

function edit(${pkField}){
	
	forwardPage('/${entityName?uncap_first}/${entityName?uncap_first}?${pkField}='+${pkField});
}

function view(${pkField}){
	
	forwardPage('/${entityName?uncap_first}/view?${pkField}='+${pkField});
}