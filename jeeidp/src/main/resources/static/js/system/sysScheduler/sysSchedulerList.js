$(function(){
	var dataTable = $("#sysSchedulerDataTable").DataTable({
		"ajax": {
			"url": '/sysScheduler/list',
			"data": function(data){
				data.jobName = $("#jobName").val();
				data.jobGroup = $("#jobGroup").val();
				data.jobState = $("#jobState").val();
				data.jobClass = $("#jobClass").val();
				data.enabled = $("#enabled").val();
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
			{"data": "jobName"},
			{"data": "jobGroup"},
			{"data": "jobClass"},
			{"data": "cron"},
			{
				"data": function(obj){
					var text = '';
					
					if (obj.enabled == 'Y') {
						text = '启用';
					} else if (obj.enabled == 'N') {
						text = '禁用';
					}
					
					return text;
				}
			},
			{
				"data": function(obj){
					var text = '';
					
					if (obj.jobState == '1') {
						text = '成功';
					} else if (obj.jobState == '2') {
						text = '失败';
					}
					
					return text;
				}
			},
			{
				"data": function(obj){
					
					if(obj.startTime){
						
						return new Date(obj.startTime).Format("yyyy-MM-dd hh:mm:ss")
					}
					
					return "";
				} 
			},
			{
				"data": function(obj){
					
					if(obj.endTime){
						
						return new Date(obj.endTime).Format("yyyy-MM-dd hh:mm:ss");
					}
					
					return "";
				} 
			},
			{
				"with": "150px",
				"data": function(obj){
					
					var html = '<button type="button" onclick="edit(\''+ obj.id +'\')" class="btn btn-sm btn-warning right-5">'
						+ '<i class="fa fa-edit"></i>'
						+ '</button>'
						+ '<button type="button" onclick="view(\''+ obj.id +'\')" class="btn btn-sm btn-info right-5">'
                    	+ '<i class="fa fa-search"></i>'
                    	+ '</button>';
					
					if(obj.enabled == 'Y'){
						
						html += '<button type="button" onclick="enableScheduler(\''+ obj.id +'\', \'N\')" class="btn btn-sm btn-info">禁用</button>';
					} else {
						
						html += '<button type="button" onclick="enableScheduler(\''+ obj.id +'\', \'Y\')" class="btn btn-sm btn-info">启用</button>';
					}
					
					return html;
				}
			}
		]
	});
	
	$('#searchBtn').click(function(){
		
		dataTable.ajax.reload();
	});
	
	$('#resetBtn').click(function(){
		
		$('#sysSchedulerSearchForm')[0].reset();
		dataTable.ajax.reload();
	});
	
	$('#addBtn').click(function(){
		
		forwardPage('/sysScheduler/sysScheduler');
	});
	
	$('#delBtn').click(function(){
		
		ajaxBySelecteRows(dataTable,'/sysScheduler/delete','确定要删除？');
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

function edit(id){
	
	forwardPage('/sysScheduler/sysScheduler?id='+id);
}

function view(id){
	
	forwardPage('/sysScheduler/view?id='+id);
}

function enableScheduler(id, enabled){
	
	$.ajax({
		type: 'post',
		url: '/sysScheduler/enableScheduler',
		data: {id: id, enabled: enabled},
		dataType: 'json',
		success: function(response){
			
			modalAlert(response.message);
			$("#sysSchedulerDataTable").DataTable().ajax.reload();
		}
	});
}