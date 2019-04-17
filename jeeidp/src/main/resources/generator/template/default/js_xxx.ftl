${'$'}(function(){
	// validate验证
	${'$'}('${'#'}${entityName?uncap_first}Form').validate();
	
	// 日期
	${'$'}('.datepicker').datetimepicker({
		language: 'zh-CN',
		format: 'yyyy-mm-dd',
		autoclose: true,
		todayBtn: true,
		clearBtn:true,
		minView: 2
	}).on('changeDate', function(event){
		
		${'$'}('${'#'}${entityName?uncap_first}Form').validate().element($(this));
	});
});

// 保存
function save(){

	saveByAjax('${entityName?uncap_first}Form','/${entityName?uncap_first}/save','/${entityName?uncap_first}/init');
}