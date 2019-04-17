$(function(){
	// validate验证
	$('#sysSchedulerForm').validate();
	
	// 日期
	$('.datepicker').datetimepicker({
		language: 'zh-CN',
		format: 'yyyy-mm-dd',
		autoclose: true,
		todayBtn: true,
		clearBtn:true,
		minView: 2
	}).on('changeDate', function(event){
		
		$('#sysSchedulerForm').validate().element($(this));
	});
});

// 保存
function save(){

	saveByAjax('sysSchedulerForm','/sysScheduler/save','/sysScheduler/init');
}