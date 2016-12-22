<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/commons/basejs.jsp"%>
<meta http-equiv="X-UA-Compatible" content="edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>字典管理</title>
<script type="text/javascript">
	var dataGrid;
	$(function() {

		dataGrid = $('#dataGrid')
				.datagrid(
						{
							url : '${path }/combination/warnUsbDataGrid',
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
										width : '120',
										title : '磁盘类型',
										field : 'mediaType'
									},	{
										width : '120',
										title : 'U盘序列号',
										field : 'serialNumber'
									},


									{
										field : 'action',
										title : '操作',
										width : 130,
										formatter : function(value, row, index) {
											var str = '';
											<shiro:hasPermission name="/combination/updateWarnUsbStatus">
											str += $
													.formatString(
															'<a href="javascript:void(0)" class="user-easyui-linkbutton-edit" data-options="plain:true,iconCls:\'icon-edit\'" onclick="confirmFun(\'{0}\');" >确定</a>',
															row.id);
											</shiro:hasPermission>
										
											return str;
										}
									} ] ],
							onLoadSuccess : function(data) {
								//	$(this).datagrid('freezeRow',0).datagrid('freezeRow',1);
								$('.user-easyui-linkbutton-edit').linkbutton({
									text : '确定',
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
		parent.$.messager.confirm('询问', '您是否要删除该条记录？', function(b) {
			if (b) {
				progressLoad();
				$.post('${path }/combination/updateWarnUsbStatus', {
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
</script>
</head>
<body class="easyui-layout" data-options="fit:true,border:false">

	<div data-options="region:'center',border:true,title:'u盘预警列表'">
		<table id="dataGrid" data-options="fit:true,border:false"></table>
	</div>
</body>
</html>