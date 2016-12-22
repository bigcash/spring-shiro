<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp"%>
<script type="text/javascript">
	$(function() {
		$('#returnForm').form({
			url : '${path }/convertInfoManage/dataSave',
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
<div class="easyui-layout" data-options="fit:true,border:false" style="display: none">
	<div data-options="region:'center',border:false" title="" style="overflow: hidden; padding: 3px;">
		<table class="grid">
			<tr>
				<td>序号</td>
				<td><input name="bus_type" type="hidden" value="清退" /><input name="id" type="hidden" value="${ConvertInfo.id}" /><input
					name="serialno" type="text" placeholder="请输入序号" class="easyui-validatebox" data-options="required:true" value="${ConvertInfo.serialno}"></td>
				<td>设备编号</td>
				<td><input name="devno" type="text" placeholder="请输入设备编号" class="easyui-validatebox" data-options="required:true"
					value="${ConvertInfo.devno}"></td>
			</tr>

			<tr>
				<td>新资产编号</td>
				<td><input name="assetnumber" type="text" placeholder="请输入新资产编号" class="easyui-validatebox" data-options="required:true"
					value="${ConvertInfo.assetnumber}"></td>
				<td>使用部门</td>
				<td><input name="usedepartment" type="text" placeholder="请输入使用部门" class="easyui-validatebox" data-options="required:true"
					value="${ConvertInfo.usedepartment}"></td>
			</tr>

			<tr>
				<td>负责人</td>
				<td><input name="resperson" type="text" placeholder="请输入负责人" class="easyui-validatebox" value=""></td>
				<td>型号</td>
				<td><input name="model" type="text" placeholder="请输入型号" class="easyui-validatebox" data-options="required:true"
					value="${ConvertInfo.model}"></td>
			</tr>


			<tr>
				<td>配置</td>
				<td><input name="configure" type="text" placeholder="请输入配置" class="easyui-validatebox" data-options="required:true"
					value="${ConvertInfo.configure}"></td>
				<td>显示器型号</td>
				<td><input name="displaymodel" type="text" placeholder="请输入显示器型号" class="easyui-validatebox" data-options="required:true"
					value="${ConvertInfo.displaymodel}"></td>
			</tr>


			<tr>
				<td>主机序列号</td>
				<td><input name="hostnumber" type="text" placeholder="请输入主机序列号" class="easyui-validatebox" data-options="required:true"
					value="${ConvertInfo.hostnumber}"></td>
				<td>硬盘ID</td>
				<td><input name="diskid" type="text" placeholder="请输入硬盘ID" class="easyui-validatebox" data-options="required:true"
					value="${ConvertInfo.diskid}"></td>
			</tr>


			<tr>
				<td>使用日期</td>
				<td><input name="usedate" type="text" placeholder="请输入使用日期" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
					readonly="readonly" class="easyui-validatebox" data-options="required:true" value="${ConvertInfo.usedate}"></td>
				<td>用途</td>
				<td><input name="purpose" type="text" placeholder="请输入用途" class="easyui-validatebox" data-options="required:true"
					value="${ConvertInfo.purpose}"></td>
			</tr>

			<tr>
				<td>设备密级</td>
				<td><input name="secequipment" type="text" placeholder="请输入设备密级" class="easyui-validatebox" data-options="required:true"
					value="${ConvertInfo.secequipment}"></td>
				<td>Mac地址</td>
				<td><input name="mac" type="text" placeholder="请输入Mac地址" class="easyui-validatebox" data-options="required:true"
					value="${ConvertInfo.mac}"></td>
			</tr>
			<tr>
				<td>UAB key编号</td>
				<td><input name="uabnumber" type="text" placeholder="请输入UAB key编号" class="easyui-validatebox" data-options="required:true"
					value="${ConvertInfo.uabnumber}"></td>
				<td>系统版本及安装时间</td>
				<td><input name="osinstall" type="text" placeholder="请输入系统版本及安装时间"
						onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})" readonly="readonly" class="easyui-validatebox"
						data-options="required:true" value="${ConvertInfo.osinstall}"></td>
			</tr>
			<tr>
				<td>房间号</td>
				<td><input name="roomid" type="text" placeholder="请输入房间号" class="easyui-validatebox" data-options="required:true"
					value="${ConvertInfo.roomid}"></td>
				<td>状态</td>
				<td><input name="infostatus" type="text" placeholder="请输入状态" class="easyui-validatebox" data-options="required:true"
					value="${ConvertInfo.infostatus}"></td>
			</tr>
			<tr>

				<td>备注</td>
				<td><input name="remark" type="text" placeholder="请输入备注" class="easyui-validatebox" data-options="required:true"
					value="${ConvertInfo.remark}"></td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</div>
</div>