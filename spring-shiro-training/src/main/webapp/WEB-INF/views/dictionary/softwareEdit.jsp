<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp"%>
<style>
<!--
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

/* td {
	width: 160px;
} */
-->
</style>
<script type="text/javascript">
	$(function() {
		$('#editForm').form({
			url : '${path }/dictionaryManager/softwareEdit',
			onSubmit : function() {
				progressLoad();
				var isValid = $(this).form('validate');
				if (!isValid) {
					progressClose();
				}
				return isValid;
			},
			success : function(result) {
				progressClose();
				result = $.parseJSON(result);
				if (result.success) {
					parent.$.modalDialog.openner_dataGrid.datagrid('reload');//之所以能在这里调用到parent.$.modalDialog.openner_dataGrid这个对象，是因为user.jsp页面预定义好了
					parent.$.modalDialog.handler.dialog('close');
				} else {
					parent.$.messager.alert('错误', result.msg, 'error');
				}
			}
		});
	});
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
	<div data-options="region:'center',border:false" title="" style="overflow: hidden; padding: 3px;">
		<form id="editForm" method="post">

			<table class="grid">

				<tr>
					<td>软件名称</td>
					<td><input name="id" type="hidden" value="${SoftwareFilterInfo.id}" />
					<input name="softwareName" type="text" placeholder="请输入名称" class="easyui-validatebox" data-options="required:true" value="${SoftwareFilterInfo.softwareName}"></td>
					<td>软件描述</td>
					<td><input name="softwareDesc" type="text" placeholder="请输入软件描述" class="easyui-validatebox" data-options="required:true" value="${SoftwareFilterInfo.softwareDesc}"></td>
				</tr>

			


			</table>
		</form>
	</div>
</div>