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

		$.post("${path }/user/queryUsers", function(data) {
			var bToObj = JSON.parse(data);
			for (var i = 0; i < bToObj.length; i++) {
				$("#resperson").append("<option value=" + bToObj[i].key + ">" + bToObj[i].value + "</option>");
			}
			$("#resperson").select2('val', $("#resperson").val());
		});

		var depname_value = $("#usedepart").val();
		//alert(depname_value);
		$('#usedepart').combotree({
			url : '${path }/organization/tree',
			parentField : 'pid',
			lines : true,
			panelHeight : 'auto',
			value : depname_value
		});
        $('#secequipment').combobox({
            url: '${path}/dictionaryManager/queryLevels',
            valueField: 'key',
            textField: 'value'
        });
        $('#secequipment').combobox('setValue', $("#secequipment").val());
		$('#editForm').form({
			url : '${path }/secHostInfoManage/dataSave',
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
		<table class="grid">

			<tr>
				<td>序号</td>
				<td><input name="id" type="hidden" value="${SecurityHostInfo.id}" /> <input name="bus_type" type="hidden" value="修改" /> <input
					name="serialno" type="text" placeholder="请输入序号" class="easyui-validatebox" data-options="required:true"
					value="${SecurityHostInfo.serialno}"></td>
				<td>设备编号</td>
				<td><input name="devno" type="text" placeholder="请输入设备编号" class="easyui-validatebox" data-options="required:true"
					value="${SecurityHostInfo.devno}"></td>
			</tr>

			<tr>
				<td>资产编号</td>
				<td><input name="assetsno" type="text" placeholder="请输入资产编号" class="easyui-validatebox" data-options="required:true"
					value="${SecurityHostInfo.assetsno}"></td>
				<td>使用部门</td>
				<td><input class="easyui-combotree" id="usedepart" name="usedepart" value="${SecurityHostInfo.usedepart}"
					style="height: 30px; width: 150px" data-options="required:true"/></td>
			</tr>

			<tr>
				<td>负责人</td>
				<td><select class="js-example-basic-single js-states form-control" id="resperson" name="resperson"
					value="${SecurityHostInfo.resperson}" class="easyui-validatebox" data-options="required:true"></select></td>
				<td>型号</td>
				<td><input name="model" type="text" placeholder="请输入型号" class=" easyui-validatebox" data-options="required:true"
					value="${SecurityHostInfo.model}"></td>
			</tr>


			<tr>
				<td>配置</td>
				<td><input name="configure" type="text" placeholder="请输入配置" class="easyui-validatebox" data-options="required:true"
					value="${SecurityHostInfo.configure}"></td>
				<td>显示器型号</td>
				<td><input name="displaymodel" type="text" placeholder="请输入显示器型号" class="easyui-validatebox" data-options="required:true"
					value="${SecurityHostInfo.displaymodel}"></td>
			</tr>


			<tr>
				<td>主机序列号</td>
				<td><input name="hostnumber" type="text" placeholder="请输入主机序列号" class="easyui-validatebox" data-options="required:true"
					value="${SecurityHostInfo.hostnumber}"></td>
				<td>硬盘ID</td>
				<td><input name="diskid" type="text" placeholder="请输入硬盘ID" class="easyui-validatebox" data-options="required:true"
					value="${SecurityHostInfo.diskid}"></td>
			</tr>


			<tr>
				<td>使用日期</td>
				<td><input name="usedate" type="text" placeholder="请输入使用日期" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
					readonly="readonly" class="easyui-validatebox" data-options="required:true" value="${SecurityHostInfo.usedate}"></td>
				<td>设备密级</td>
				<%--<td><input name="secequipment" type="text" placeholder="请输入设备密级" class="easyui-validatebox" data-options="required:true"
					value="${SecurityHostInfo.secequipment}"></td>--%>
                <td><input name="secequipment" id="secequipment" placeholder="请输入密级" class="easyui-combobox"
                           style="height: 34px;" data-options="required:true" value="${SecurityHostInfo.secequipment}"></td>
			</tr>

			<tr>
				<td>MAC地址</td>
				<td><input name="mac" type="text" placeholder="请输MAC地址" class="easyui-validatebox" data-options="required:true"
					value="${SecurityHostInfo.mac}"></td>
				<td>用途</td>
				<td><input name="purpose" type="text" placeholder="请输入用途" class="easyui-validatebox" data-options="required:true"
					value="${SecurityHostInfo.purpose}"></td>
			</tr>
			<tr>
				<td>系统版本及安装时间</td>
				<td><input name="osinstall" type="text" placeholder="请输入系统版本及安装时间" class="easyui-validatebox" data-options="required:true"
					value="${SecurityHostInfo.osinstall}"></td>
				<td>房间号</td>
				<td><input name="roomid" type="text" placeholder="请输入房间号" class="easyui-validatebox" data-options="required:true"
					value="${SecurityHostInfo.roomid}"></td>
			</tr>

			<tr>
				<td>状态</td>
				<td><input name="infostatus" type="text" placeholder="请输入状态" class="easyui-validatebox" data-options="required:true"
					value="${SecurityHostInfo.infostatus}"></td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</div>
</div>