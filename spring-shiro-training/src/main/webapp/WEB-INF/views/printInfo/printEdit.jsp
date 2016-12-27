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

		var depname_value=$("#respondepart").val();
		//alert(depname_value);
		$('#respondepart').combotree({
			url : '${path }/organization/tree',
			parentField : 'pid',
			lines : true,
			panelHeight : 'auto',
			value:depname_value
		});
        $('#devseclevel').combobox({
            url: '${path}/dictionaryManager/queryLevels',
            valueField: 'key',
            textField: 'value'
        });
        $('#devseclevel').combobox('setValue', $("#devseclevel").val());
		$('#editForm').form({
			url : '${path }/printInfoManage/dataSave',
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
				<td>房间</td>
				<td><input name="bus_type" type="hidden" value="修改" /><input name="id" type="hidden" value="${PrintInfo.id}" /><input name="room"
					type="text" placeholder="请输入房间" class="easyui-validatebox" data-options="required:true" value="${PrintInfo.room}"></td>
				<td>设备编号</td>
				<td><input name="devno" type="text" placeholder="请输入设备编号" class="easyui-validatebox" data-options="required:true"
					value="${PrintInfo.devno}"></td>
			</tr>

			<tr>
				<td>资产号</td>
				<td><input name="assertsno" type="text" placeholder="资产号" class="easyui-validatebox" data-options="required:true"
					value="${PrintInfo.assertsno}"></td>
				<td>责任部门</td>
					<td><input class="easyui-combotree" id="respondepart" name="respondepart" value="${PrintInfo.respondepart}"
					style="height: 30px; width: 150px" data-options="required:true"/></td>
			</tr>

			<tr>
				<td>负责人</td>
					<td><select class="js-example-basic-single js-states form-control" id="resperson" name="resperson"
					value="${PrintInfo.resperson}" class="easyui-validatebox" data-options="required:true"></select></td>
				<td>品牌</td>
				<td><input name="brand" type="text" placeholder="请输入品牌" class="easyui-validatebox" data-options="required:true"
					value="${PrintInfo.brand}"></td>
			</tr>


			<tr>
				<td>型号</td>
				<td><input name="model" type="text" placeholder="请输入型号" class="easyui-validatebox" data-options="required:true"
					value="${PrintInfo.model}"></td>
				<td>规格</td>
				<td><input name="specifications" type="text" placeholder="请输入规格" class="easyui-validatebox" data-options="required:true"
					value="${PrintInfo.specifications}"></td>
			</tr>


			<tr>
				<td>序列号</td>
				<td><input name="serialno" type="text" placeholder="请输入序列号" class="easyui-validatebox" data-options="required:true"
					value="${PrintInfo.serialno}"></td>
				<td>内码</td>
				<td><input name="code" type="text" placeholder="请输入内码" class="easyui-validatebox" data-options="required:true"
					value="${PrintInfo.code}"></td>
			</tr>


			<tr>
				<td>使用日期</td>
				<td><input name="usedate" type="text" placeholder="请输入使用日期" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
					readonly="readonly" class="easyui-validatebox" data-options="required:true" value="${PrintInfo.usedate}"></td>
				<td>设备密级</td>
                <td><input name="devseclevel" id="devseclevel" placeholder="请输入密级" class="easyui-combobox"
                           style="height: 34px;" data-options="required:true" value="${PrintInfo.devseclevel}"></td>
			</tr>

			<tr>
				<td>使用方式</td>
				<td><input name="usemethod" type="text" placeholder="请输入使用方式" class="easyui-validatebox" data-options="required:true"
					value="${PrintInfo.usemethod}"></td>
				<td>状态</td>
				<td><input name="infostatus" type="text" placeholder="请输入状态" class="easyui-validatebox" data-options="required:true"
					value="${PrintInfo.infostatus}"></td>
			</tr>
			<tr>
				<td>备注</td>
				<td><input name="remark" type="text" placeholder="请输入备注" class="easyui-validatebox" data-options="required:true"
					value="${PrintInfo.remark}"></td>
				<td></td>
				<td></td>
			</tr>

		</table>
	</div>
</div>