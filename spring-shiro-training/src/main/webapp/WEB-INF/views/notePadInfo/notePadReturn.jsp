<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp"%>
<script type="text/javascript">
	$(function() {
		$('#returnForm').form({
			url : '${path }/notePadInfoManage/dataSave',
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
<div class="easyui-layout" data-options="fit:true,border:false" style="display:none">
	<div data-options="region:'center',border:false" title="" style="overflow: hidden; padding: 3px;">
		<form id="editForm" method="post">
			<table class="grid">
				<tr>
					<td>编号</td>
					<td><input name="bus_type" type="hidden" value="清退" /><input name="id" type="hidden" value="${notePadInfo.id}" /><input name="serialno" type="text" placeholder="请输入序号"
						class="easyui-validatebox" data-options="required:true" value="${notePadInfo.serialno}"></td>
					<td>信息设备编号</td>
					<td><input name="devinformno" type="text" placeholder="请输入信息设备编号" class="easyui-validatebox" data-options="required:true"
						value="${notePadInfo.devinformno}"></td>
				</tr>

				<tr>
					<td>安装地点</td>
					<td><input name="installaddres" type="text" placeholder="请输入安装地点" class="easyui-validatebox" data-options="required:true"
						value="${notePadInfo.installaddres}"></td>
					<td>责任人</td>
					<td><input name="resperson" type="text" placeholder="请输入责任人" class="easyui-validatebox" 
						value=""></td>
				</tr>

				<tr>
					<td>密级</td>
					<td><input name="devseclevel" type="text" placeholder="请输入密级" class="easyui-validatebox" data-options="required:true"
						value="${notePadInfo.devseclevel}"></td>
					<td>出厂编号</td>
					<td><input name="productno" type="text" placeholder="请输入出厂编号" class=" easyui-validatebox" data-options="required:true"
						value="${notePadInfo.productno}"></td>
				</tr>


				<tr>
					<td>品牌型号</td>
					<td><input name="brandno" type="text" placeholder="请输入品牌型号" class="easyui-validatebox" data-options="required:true"
						value="${notePadInfo.brandno}"></td>
					<td>VLAN</td>
					<td><input name="vlan" type="text" placeholder="请输入VLAN" class="easyui-validatebox" data-options="required:true"
						value="${notePadInfo.vlan}"></td>
				</tr>


				<tr>
					<td>IP地址</td>
					<td><input name="ipaddress" type="text" placeholder="请输入IP地址" class="easyui-validatebox" data-options="required:true"
						value="${notePadInfo.ipaddress}"></td>
					<td>MAC地址</td>
					<td><input name="mac" type="text" placeholder="请输入MAC地址" class="easyui-validatebox" data-options="required:true"
						value="${notePadInfo.mac}"></td>
				</tr>


				<tr>
					<td>配线架</td>
					<td><input name="patchpanel" type="text" placeholder="请输入 配线架" class="easyui-validatebox" data-options="required:true"
						value="${notePadInfo.patchpanel}"></td>
					<td>交换机端口</td>
					<td><input name="switchport" type="text" placeholder="请输入交换机端口" class="easyui-validatebox" data-options="required:true"
						value="${notePadInfo.switchport}"></td>
				</tr>

			</table>
		</form>
	</div>
</div>