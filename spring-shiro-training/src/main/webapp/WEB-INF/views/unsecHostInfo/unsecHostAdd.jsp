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

		$('#departname').combotree({
			url : '${path }/organization/tree',
			parentField : 'pid',
			lines : true,
			panelHeight : 'auto'
		});
		$('#addForm').form({
			url : '${path }/unsecHostInfoManage/dataSave',
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
				<td>信息设备编号</td>
				<td><input name="bus_type" type="hidden" value="新增" /><input name="informdevno" type="text" placeholder="请输入信息设备编号"
					class="easyui-validatebox" data-options="required:true" value=""></td>
				<td>部门名称</td>
				<!-- <td><input name="departname" type="text" placeholder="请输入部门名称" class="easyui-validatebox" data-options="required:true" value=""></td> -->
				<td><input class="easyui-combotree" id="departname" name="departname" value="" style="height: 30px; width: 150px"
					data-options="required:true"></input></td>
			</tr>

			<tr>
				<td>责任人</td>
				<!-- <td><input name="resperson" type="text" placeholder="请输入责任人" class="easyui-validatebox" data-options="required:true" value=""></td> -->
				<td><select class="js-example-basic-single js-states form-control" id="resperson" name="resperson" class="easyui-validatebox"
					data-options="required:true"><option value="">--请选择--</option></select></td>
				<td>设备密级</td>
				<td><input name="seclevel" type="text" placeholder="请输入设备密级" class="easyui-validatebox" data-options="required:true" value=""></td>
			</tr>

			<tr>
				<td>资产编号</td>
				<td><input name="assetsno" type="text" placeholder="请输入资产编号" class="easyui-validatebox" data-options="required:true" value=""></td>
				<td>资产归属</td>
				<td><input name="assersown" type="text" placeholder="请输入资产归属" class="easyui-validatebox" data-options="required:true" value=""></td>
			</tr>


			<tr>
				<td>设备出厂编号</td>
				<td><input name="equipmentno" type="text" placeholder="请输入设备出厂编号" class="easyui-validatebox" data-options="required:true" value=""></td>
				<td>设备编号</td>
				<td><input name="devno" type="text" placeholder="请输入设备编号" class="easyui-validatebox" data-options="required:true" value=""></td>
			</tr>


			<tr>
				<td>硬盘序列号</td>
				<td><input name="diskno" type="text" placeholder="请输入硬盘序列号" class="easyui-validatebox" data-options="required:true" value=""></td>
				<td>规格</td>
				<td><input name="specification" type="text" placeholder="请输入规格" class="easyui-validatebox" data-options="required:true" value=""></td>
			</tr>


			<tr>
				<td>启用时间</td>
				<td><input name="starttime" type="text" placeholder="请输入启用时间" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
					readonly="readonly" class="easyui-validatebox" data-options="required:true" value=""></td>
				<td>IP地址</td>
				<td><input name="ipaddress" type="text" placeholder="请输入IP地址" class="easyui-validatebox" data-options="required:true" value=""></td>
			</tr>

			<tr>
				<td>MAC地址</td>
				<td><input name="mac" type="text" placeholder="请输入MAC地址" class="easyui-validatebox" data-options="required:true" value=""></td>
				<td>物理位置</td>
				<td><input name="location" type="text" placeholder="请输入物理位置" class="easyui-validatebox" data-options="required:true" value=""></td>
			</tr>
			<tr>
				<td>操作系统版本</td>
				<td><input name="osversion" type="text" placeholder="请输入操作系统版本" class="easyui-validatebox" data-options="required:true" value=""></td>
				<td>操作系统安装时间</td>
				<td><input name="osinstaltime" type="text" placeholder="请输入操作系统安装时间"
					onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})" readonly="readonly" class="easyui-validatebox"
					data-options="required:true" value=""></td>
			</tr>
			<tr>
				<td>上网许可证</td>
				<td><input name="surfcertif" type="text" placeholder="请输入上网许可证" class="easyui-validatebox" data-options="required:true" value=""></td>
				<td>使用情况</td>
				<td><input name="usestatus" type="text" placeholder="请输入使用情况" class="easyui-validatebox" data-options="required:true" value=""></td>
			</tr>
			<tr>
				<td>备注</td>
				<td><input name="remark" type="text" placeholder="请输入设备类型" class="easyui-validatebox" data-options="required:true" value=""></td>
				<td></td>
				<td></td>
			</tr>


		</table>
	</div>
</div>