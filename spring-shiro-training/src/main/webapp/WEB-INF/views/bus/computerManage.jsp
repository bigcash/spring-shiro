<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/commons/basejs.jsp"%>
<meta http-equiv="X-UA-Compatible" content="edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>十三所二三〇厂涉密内网计算机台账</title>
<script type="text/javascript">
	var dataGrid;
	$(function() {

		dataGrid = $('#dataGrid')
				.datagrid(
						{
							url : '${path }/computerManage/dataGrid',
							fit : true,
							striped : true,
							rownumbers : true,
							pagination : true,
							singleSelect : true,
							idField : 'id',
							pageSize : 20,
							pageList : [ 10, 20, 30, 50 ],
							frozenColumns:[[    
							                {field:'infodevno',title:'信息设备编号',width:80},    
							                {field:'depname',title:'部门名称',width:80},    
							            ]],   
							columns : [ [
									{
										width : '80',
										title : '信息设备编号',
										field : 'infodevno',
										
										sortable : true
									},
									{
										width : '80',
										title : '部门名称',
										field : 'depname',
										sortable : true
									},
									{
										width : '80',
										title : '责任人',
										field : 'resperson',
										hidden : true
									},
									{
										width : '80',
										title : '设备密级',
										field : 'devseclevel'
									},
									{
										width : '80',
										title : '资产编号',
										field : 'propertyno'
									},
									{
										width : '80',
										title : '资产归属',
										field : 'propertyown'
									},
									{
										width : '80',
										title : '设备出厂编号',
										field : 'devorigno',
										sortable : true
									},
									{
										width : '80',
										title : '设备型号',
										field : 'devno',
										sortable : true
									},
									{
										width : '80',
										title : '硬盘序列号',
										field : 'diskno'

									},
									{
										width : '80',
										title : '规格',
										field : 'devstandard'

									},
									{
										width : '80',
										title : '启用时间',
										field : 'starttime'

									},
									{
										width : '60',
										title : '设备名称',
										field : 'devname'

									},
									{
										width : '60',
										title : 'IP地址',
										field : 'ipaddress'

									},
									{
										width : '60',
										title : 'VLAN',
										field : 'vlan'

									},
									{
										width : '60',
										title : 'MAC地址',
										field : 'mac'

									},
									{
										width : '100',
										title : '交换机端口号',
										field : 'switchport'

									},
									{
										width : '60',
										title : '配线架',
										field : 'patchpanel'

									},
									{
										width : '60',
										title : '物理位置',
										field : 'phylocation'

									},
									{
										width : '100',
										title : '操作系统版本',
										field : 'osversion'

									},
									{
										width : '120',
										title : '操作系统安装时间',
										field : 'osinstime'

									},
									{
										width : '80',
										title : 'CAKEY编号',
										field : 'cakeyno'

									},
									{
										width : '60',
										title : '网管备注',
										field : 'networkmark'

									},
									{
										width : '60',
										title : '使用情况',
										field : 'usedstatus'

									},
									{
										width : '60',
										title : '离网时间',
										field : 'leaveTime'

									},
									{
										width : '60',
										title : '备注',
										field : 'remark'

									},
									{
										width : '120',
										title : '是否安装视频干扰仪',
										field : 'isInstall'

									},
									{
										field : 'action',
										title : '操作',
										width : 130,
										formatter : function(value, row, index) {
											var str = '';

											str += $
													.formatString(
															'<a href="javascript:void(0)" class="user-easyui-linkbutton-edit" data-options="plain:true,iconCls:\'icon-edit\'" onclick="editFun(\'{0}\');" >编辑</a>',
															row.id);

											str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
											str += $
													.formatString(
															'<a href="javascript:void(0)" class="user-easyui-linkbutton-del" data-options="plain:true,iconCls:\'icon-del\'" onclick="deleteFun(\'{0}\');" >删除</a>',
															row.id);

											return str;
										}
									} ] ],
							onLoadSuccess : function(data) {
							//	$(this).datagrid('freezeRow',0).datagrid('freezeRow',1);
								$('.user-easyui-linkbutton-edit').linkbutton({
									text : '编辑',
									plain : true,
									iconCls : 'icon-edit'
								});
								$('.user-easyui-linkbutton-del').linkbutton({
									text : '删除',
									plain : true,
									iconCls : 'icon-del'
								});
							},
							toolbar : '#toolbar'
						});
	});

	function addFun() {
		parent.$.modalDialog({
			title : '添加',
			width : 650,
			height : 600,
			href : '${path }/computerManage/addPage',
			buttons : [ {
				text : '添加',
				handler : function() {
					parent.$.modalDialog.openner_dataGrid = dataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
					var f = parent.$.modalDialog.handler.find('#addForm');
					f.submit();
				}
			} ]
		});
	}
	function fileUpload(){
		parent.$.modalDialog({
			title : '文件上传',
			width : 400,
			height : 300,
			href : '${path }/computerManage/fileUpload',
			buttons : [ {
				text : '关闭',
				handler : function() {
					parent.$.modalDialog.openner_dataGrid = dataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
					var f = parent.$.modalDialog.handler.find('#addForm');
					 parent.$.modalDialog.handler.dialog('close');
					//f.submit();
				}
			} ]
		});
		
	}
	
	
	

	function deleteFun(id) {
		if (id == undefined) {//点击右键菜单才会触发这个
			var rows = dataGrid.datagrid('getSelections');
			id = rows[0].id;
		} else {//点击操作里面的删除图标会触发这个
			dataGrid.datagrid('unselectAll').datagrid('uncheckAll');
		}
		parent.$.messager.confirm('询问', '您是否要删除该条记录？', function(b) {
			if (b) {
				var currentUserId = '${sessionInfo.id}';/*当前登录用户的ID*/
				if (currentUserId != id) {
					progressLoad();
					$.post('${path }/computerManage/delete', {
						id : id
					}, function(result) {
						if (result.success) {
							parent.$.messager.alert('提示', result.msg, 'info');
							dataGrid.datagrid('reload');
						}
						progressClose();
					}, 'JSON');
				}
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
			title : '编辑',
			width : 600,
			height : 600,
			href : '${path }/computerManage/editPage?id=' + id,
			buttons : [ {
				text : '确定',
				handler : function() {
					parent.$.modalDialog.openner_dataGrid = dataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
					var f = parent.$.modalDialog.handler.find('#editForm');
					f.submit();
				}
			} ]
		});
	}

	function searchFun() {
		dataGrid.datagrid('load', $.serializeObject($('#searchForm')));
	}
	function cleanFun() {
		$('#searchForm input').val('');
		dataGrid.datagrid('load', {});
	}
</script>
</head>
<body class="easyui-layout" data-options="fit:true,border:false">
	<div data-options="region:'north',border:false" style="height: 30px; overflow: hidden; background-color: #fff">
		<form id="searchForm">
			<table>
				<tr>
					<th>部门 :</th>
					<td><input name="depname" placeholder="请输入部门 " /></td>
					<th>责任人 :</th>
					<td><input name="resperson" placeholder="请输入责任人 " /></td>
					<th>设备型号 :</th>
					<td><input name="devno" placeholder="请输入设备型号 " /></td>
					<td><a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="searchFun();">查询</a><a
						href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" onclick="cleanFun();">清空</a></td>
				</tr>
			</table>
		</form>
	</div>
	<div data-options="region:'center',border:true,title:'涉密内网计算机台账列表'">
		<table id="dataGrid" data-options="fit:true,border:false"></table>
	</div>
	<div id="toolbar">
		<%-- <shiro:hasPermission name="/computerManage/addPage"> --%>
		<div style="float:left">
		<a onclick="addFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'">添加</a>
		</div>
		<div style="float:right">
		<a onclick="fileUpload();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'">文件上传</a>
		</div>
		<%-- 	</shiro:hasPermission> --%>
	</div>
</body>
</html>