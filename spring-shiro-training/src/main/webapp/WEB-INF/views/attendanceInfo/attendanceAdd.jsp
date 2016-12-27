<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp"%>
<script type="text/javascript">
	$(function() {
		$('input.easyui-validatebox').validatebox({
			validateOnCreate : false,
			err : function(target, message, action) {
				var opts = $(target).validatebox('options');
				message = message || opts.prompt;
				$.fn.validatebox.defaults.err(target, message, action);
			}
		});
		$("#resperson").select2();

		$.post("${path }/user/queryUsers", {
			param : "新增"
		}, function(data) {
			var bToObj = JSON.parse(data);
			for (var i = 0; i < bToObj.length; i++) {
				$("#resperson").append("<option value=" + bToObj[i].key + ">" + bToObj[i].value + "</option>");
			}
		});

		$('#department').combotree({
			url : '${path }/organization/tree',
			parentField : 'pid',
			lines : true,
			panelHeight : 'auto'
		});
        $('#seclevel').combobox({
            url:'${path}/dictionaryManager/queryLevels',
            valueField:'key',
            textField:'value'
        });



		$('#addForm').form({
			url : '${path }/attendanceInfoManage/dataSave',
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
					parent.$.messager.alert('提示', result.msg, 'warning');
				}
			}
		});

	});
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
	<div data-options="region:'center',border:false" title="" style="overflow: hidden; padding: 3px;">
		<table class="grid">
			<tr>
				<td>资产归属</td>
				<td><input name="bus_type" type="hidden" value="新增" /><input name="propertyown" type="text" placeholder="请输入资产归属"
					class="easyui-validatebox" data-options="required:true" value=""></td>
				<td>设备编号</td>
				<td><input name="devno" type="text" placeholder="请输入设备编号" class="easyui-validatebox" data-options="required:true" value=""></td>
			</tr>

			<tr>
				<td>部门</td>
				<!-- <td><input name="department" type="text" placeholder="请输入部门" class="easyui-validatebox" data-options="required:true"
						value=""></td> -->
				<td><input class="easyui-combotree" id="department" name="department" value="" style="height: 30px; width: 150px"
					data-options="required:true"></input></td>
				<td>设备名称</td>
				<td><input name="devname" type="text" placeholder="请输入设备名称" class="easyui-validatebox" data-options="required:true" value=""></td>
			</tr>

			<tr>
				<td>责任人</td>
				<!-- <td><input name="resperson" type="text" placeholder="请输入负责人" class="easyui-validatebox" data-options="required:true" value=""></td> -->
				<td><select class="js-example-basic-single js-states form-control" id="resperson" name="resperson" class="easyui-validatebox"
					data-options="required:true"><option value="">--请选择--</option></select></td>
				<td>管理人</td>
				<td><input name="manager" type="text" placeholder="请输入管理人" class="easyui-validatebox" data-options="required:true" value=""></td>
			</tr>


			<tr>
				<td>办公自动化设备编号</td>
				<td><input name="oaautono" type="text" placeholder="请输入办公自动化设备编号" class="easyui-validatebox" data-options="required:true" value=""></td>
				<td>密级</td>
				<%--<td><input name="devno" type="text" placeholder="请输入密级" class="easyui-validatebox" data-options="required:true" value=""></td>--%>
                <td><input name="seclevel" id="seclevel" placeholder="请输入密级" class="easyui-combobox" style="height: 34px;" data-options="required:true" value=""></td>
			</tr>


			<tr>
				<td>品牌/型号</td>
				<td><input name="brandno" type="text" placeholder="请输入品牌/型号" class="easyui-validatebox" data-options="required:true" value=""></td>
				<td>所在位置</td>
				<td><input name="location" type="text" placeholder="请输入所在位置" class="easyui-validatebox" data-options="required:true" value=""></td>
			</tr>


			<tr>
				<td>配备日期</td>
				<td><input name="usedate" placeholder="请输入配备日期" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
					class="easyui-validatebox" data-options="required:true" value=""></td>
				<td>使用情况</td>
				<td><input name="usestatus" type="text" placeholder="请输入使用情况" class="easyui-validatebox" data-options="required:true" value=""></td>
			</tr>

			<tr>
				<td>备注</td>
				<td><input name="remark" type="text" placeholder="请输入备注" class="easyui-validatebox" data-options="required:true" value=""></td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</div>
</div>