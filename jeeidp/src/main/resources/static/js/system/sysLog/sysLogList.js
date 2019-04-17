$(function(){
	var dataTable = $("#sysLogDataTable").DataTable({
		"ajax": {
			"url": '/sysLog/list',
			"data": function(data){
				data.logType = $("#logType").val();
				data.logTitle = $("#logTitle").val();
				data.operateUser = $("#operateUser").val();
				data.operateDateStart = $("#operateDateStart").val();
				data.operateDateEnd = $("#operateDateEnd").val();
			}
		},
		"ordering": false,
		"columns": [
			{
				"data": "id",
				"className": "text-center sign-col",
				"render": function(data, type, row, meta){
					
					return '<input type="checkbox" name="pk" value="' + data + '" onclick="checkOne()"/>';
				}
			},
			{
				"data": function(obj){
					var text = '';
					
					if (obj.logType == '1') {
						text = '功能信息';
					} else if (obj.logType == '2') {
						text = '功能异常';
					} else if (obj.logType == '3') {
						text = '定时任务异常';
					}
					
					return text;
				}
			},
			{"data": "logTitle"},
			{
				"data": function(obj){
					
					if(obj.operateUserName == null){
						
						return obj.operateUser;
					} else {
						
						return obj.operateUserName + '-' + obj.operateUserText;
					}
				} 
			},
			{"data": "operateIp"},
			{
				"data": function(obj){
					
					return new Date(obj.operateDate).Format("yyyy-MM-dd hh:mm:ss");
				} 
			},
			{
				"data": "id",
				"className": "operate-col",
				"render": function(data, type, row, meta){
					
					var html = '<button type="button" onclick="view(\''+ data +'\')" class="btn btn-sm btn-info">'
                    	+ '<i class="fa fa-search"></i>'
                    	+ '</button>';
					return html;
				}
			}
		]
	});
	
	$('#searchBtn').click(function(){
		
		dataTable.ajax.reload();
	});
	
	$('#resetBtn').click(function(){
		
		$('#sysLogSearchForm')[0].reset();
		dataTable.ajax.reload();
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

function view(id){
	
	forwardPage('/sysLog/view?id='+id);
}