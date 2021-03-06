<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/commons/basejs.jsp"%>
<meta http-equiv="X-UA-Compatible" content="edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>十三所二三〇厂交换机台帐</title>
<script type="text/javascript">
	var dataGrid;
	$(function() {

		dataGrid = $('#dataGrid')
				.datagrid(
						{
							url : '${path }/switchInfoManage/dataGrid',
							fit : true,
							striped : true,
							rownumbers : true,
							pagination : true,
							singleSelect : true,
							idField : 'id',
							pageSize : 20,
							pageList : [ 10, 20, 30, 50 ],
							frozenColumns : [ [ {
								field : 'depname',
								title : '责任部门',
								width : 80
							}, {
								field : 'resperson',
								title : '责任人',
								width : 80
							}, {
								width : '80',
								title : '设备编号',
								field : 'devno'

							}, ] ],
							columns : [ [
									{
										field : 'devname',
										title : '设备名称',
										width : 80
									},
									{
										width : '80',
										title : '地区',
										field : 'region'
									},
									{
										width : '100',
										title : '准用证编号',
										field : 'certifno'
									},
									{
										width : '140',
										title : 'IP地址',
										field : 'ip'
									},

									{
										width : '120',
										title : 'MAC地址',
										field : 'mac'

									},
									{
										width : '80',
										title : '型号',
										field : 'model'

									},
									{
										width : '80',
										title : '配置',
										field : 'equipment'

									},
									{
										width : '80',
										title : '信息点',
										field : 'informpoint'

									},
									{
										width : '120',
										title : '终端计算机类型',
										field : 'termachtype'

									},
									{
										width : '120',
										title : '终端计算机用途',
										field : 'termachpurpose'

									},

									{
										width : '80',
										title : '操作系统',
										field : 'os'

									},
									{
										width : '120',
										title : '操作系统安装时间',
										field : 'osinstaltime'

									},
									{
										width : '80',
										title : '密级',
										field : 'seclevel'

									},
									{
										width : '120',
										title : '计算机所在地',
										field : 'location'

									},
									{
										width : '80',
										title : '硬盘序号',
										field : 'diskno'

									},
									{
										width : '60',
										title : '杀毒厂商',
										field : 'antiviruscomp'

									},
									{
										width : '100',
										title : '主机审计',
										field : 'hostaudit'

									},
									{
										width : '100',
										title : '介质管理',
										field : 'medmanager'

									},
									{
										width : '120',
										title : '对应刷卡器IP',
										field : 'cardid'

									},
									{
										width : '120',
										title : '对应刷卡器MAC',
										field : 'cardmac'

									},
									{
										width : '120',
										title : '对应刷卡器信息点',
										field : 'cardinfo'

									},
									{
										width : '60',
										title : '状态',
										field : 'infostatus'

									},
									{
										width : '100',
										title : '备注',
										field : 'remark'

									},
									{
										width : '140',
										title : '数据状态',
										field : 'status',
										formatter : function(value, row, index) {
											//alert(value);
											value = parseInt(value);
											switch (value) {
											case 0:
												return '已更新';
											case 1:
												return '待更新';
											default:
												return '历史数据';
											}
										}
									},
									{
										field : 'action',
										title : '操作',
										width : 130,
										formatter : function(value, row, index) {
											var str = '';
											<shiro:hasPermission name="/switchInfoManage/queryDetail">
											str += $
													.formatString(
															'<a href="javascript:void(0)" class="user-easyui-linkbutton-edit" data-options="plain:true,iconCls:\'icon-edit\'" onclick="editFun(\'{0}\');" >详情</a>',
															row.id);
											</shiro:hasPermission>
											<shiro:hasPermission name="/switchInfoManage/delete">
											str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
											str += $
													.formatString(
															'<a href="javascript:void(0)" class="user-easyui-linkbutton-del" data-options="plain:true,iconCls:\'icon-del\'" onclick="deleteFun(\'{0}\');" >删除</a>',
															row.id);
											</shiro:hasPermission>
											return str;
										}
									} ] ],
							onLoadSuccess : function(data) {
								//	$(this).datagrid('freezeRow',0).datagrid('freezeRow',1);
								$('.user-easyui-linkbutton-edit').linkbutton({
									text : '详情',
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
			href : '${path }/switchInfoManage/addPage',
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
	function fileUpload() {
		parent.$.modalDialog({
			title : '文件上传',
			width : 400,
			height : 300,
			href : '${path }/switchInfoManage/fileUpload',
			buttons : [ {
				text : '关闭',
				handler : function() {
					parent.$.modalDialog.handler.dialog('close');
					dataGrid.datagrid('reload');
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
				progressLoad();
				$.post('${path }/switchInfoManage/delete', {
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
			title : '详情',
			width : 800,
			height : 500,
			href : '${path }/switchInfoManage/queryDetail?id=' + id,
			buttons : [ {
				text : '关闭',
				handler : function() {
					parent.$.modalDialog.handler.dialog('close');
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
					<th>责任部门 :</th>
					<td><input name="depname" placeholder="请输入责任部门 " /></td>
					<th>负责人 :</th>
					<td><input name="resperson" placeholder="请输入责任人 " /></td>
					<th>设备名称:</th>
					<td><input name="devname" placeholder="请输入设备名称 " /></td>
					<td><a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="searchFun();">查询</a><a
						href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" onclick="cleanFun();">清空</a></td>
				</tr>
			</table>
		</form>
	</div>
	<div data-options="region:'center',border:true,title:'十三所二三〇厂交换机台帐列表'">
		<table id="dataGrid" data-options="fit:true,border:false"></table>
	</div>
	<div id="toolbar">
		<shiro:hasPermission name="/switchInfoManage/fileUpload">
			<a onclick="fileUpload();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'">文件上传</a>
		</shiro:hasPermission>
	</div>
</body>
</html>