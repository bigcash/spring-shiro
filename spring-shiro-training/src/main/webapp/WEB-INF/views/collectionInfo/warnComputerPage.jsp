<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/commons/basejs.jsp"%>
<meta http-equiv="X-UA-Compatible" content="edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>字典管理</title>
<!-- <style type="text/css">
input {
	display: block;
	padding: 6px 12px;
	width: 120px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	float: left;
	font-size: 14px;
}

td, select {
	width: 160px;
}
</style> -->
<script type="text/javascript">
	var dataGrid;
	$(function() {

		dataGrid = $('#dataGrid')
				.datagrid(
						{
							url : '${path }/combination/warnComputerDataGrid',
							fit : true,
							striped : true,
							rownumbers : true,
							pagination : true,
							singleSelect : true,
							idField : 'id',
							pageSize : 20,
							pageList : [ 10, 20, 30, 50 ],

							columns : [ [
									{
										width : '120',
										title : '部门名称',
										field : 'depname'
									},
									{
										width : '120',
										title : '责任人',
										field : 'resperson'
									},
									{
										width : '120',
										title : 'IP',
										field : 'ip'
									},
									{
										width : '120',
										title : 'MAC',
										field : 'mac'
									},	{
										width : '180',
										title : '操作系统版本号',
										field : 'os'
									},	{
										width : '120',
										title : '磁盘序列号',
										field : 'serialNumber'
									},{
										width : '80',
										title : '业务类型',
										field : 'busType'
									},
									{
										width : '120',
										title : '变更字段',
										field : 'changeField'
									},
									{
										field : 'action',
										title : '操作',
										width : 130,
										formatter : function(value, row, index) {
											var str = '';
											<shiro:hasPermission name="/combination/updateWarnComputerStatus">
											str += $
													.formatString(
															'<a href="javascript:void(0)" class="user-easyui-linkbutton-edit" data-options="plain:true,iconCls:\'icon-edit\'" onclick="confirmFun(\'{0}\');" >忽略</a>',
															row.id);
											</shiro:hasPermission>
										    <shiro:hasPermission name="/combination/dealWarnComputer">
											str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
											str += $
													.formatString(
															'<a href="javascript:void(0)" class="user-easyui-linkbutton-del" data-options="plain:true,iconCls:\'icon-del\'" onclick="editFun(\'{0}\');" >删除</a>',
															row.id);
											 </shiro:hasPermission>
											return str;
										}
									} ] ],
							onLoadSuccess : function(data) {
								//	$(this).datagrid('freezeRow',0).datagrid('freezeRow',1);
								$('.user-easyui-linkbutton-edit').linkbutton({
									text : '忽略',
									plain : true,
									iconCls : 'icon-del'
								});
								$('.user-easyui-linkbutton-del').linkbutton({
									text : '处理',
									plain : true,
									iconCls : 'icon-edit'
								});
							},
							toolbar : '#toolbar'
						});
	});


	function confirmFun(id) {
		if (id == undefined) {//点击右键菜单才会触发这个
			var rows = dataGrid.datagrid('getSelections');
			id = rows[0].id;
		} else {//点击操作里面的删除图标会触发这个
			dataGrid.datagrid('unselectAll').datagrid('uncheckAll');
		}
		parent.$.messager.confirm('询问', '您是否要忽略该条记录？', function(b) {
			if (b) {
				progressLoad();
				$.post('${path }/combination/updateWarnComputerStatus', {
					id : id
				}, function(result) {
					if (result.success) {
						parent.$.messager.alert('提示', result.msg, 'info');
						dataGrid.datagrid('reload');
					}
					progressClose();
				}, 'JSON');
			}
		});
	}
	
	function editFun(id) {
		if (id == undefined) {
			var rows = dataGrid.datagrid('getSelections');
			id = rows[0].id;
		} else {
			dataGrid.datagrid('unselectAll').datagrid('uncheckAll');
		}
		parent.$.modalDialog({
			title : '新增',
			width : 800,
			height : 500,
			href : '${path }/combination/dealWarnComputer?id=' + id,
			buttons : [ {
				text : '提交',
				handler : function() {
					parent.$.modalDialog.openner_dataGrid = dataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
					var f = parent.$.modalDialog.handler.find('#addForm');
					f.submit(); 
					// parent.$.modalDialog.handler.dialog('close');
				}
			} ]
		});
	}
	
	
	
	
</script>
</head>
<body class="easyui-layout" data-options="fit:true,border:false">

	<div data-options="region:'center',border:true,title:'内网计算机台帐预警列表'">
		<table id="dataGrid" data-options="fit:true,border:false"></table>
	</div>
</body>
</html>