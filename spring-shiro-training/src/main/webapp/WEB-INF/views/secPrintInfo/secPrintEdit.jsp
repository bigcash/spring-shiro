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

		var depname_value = $("#resdepart").val();
		//alert(depname_value);
		$('#resdepart').combotree({
			url : '${path }/organization/tree',
			parentField : 'pid',
			lines : true,
			panelHeight : 'auto',
			value : depname_value
		});
		$('#editForm').form({
			url : '${path }/secPrintInfoManage/dataSave',
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
				<td>地区</td>
				<td><input name="bus_type" type="hidden" value="修改" /><input name="id" type="hidden" value="${SecPrintInfo.id}" /><input
					name="region" type="text" placeholder="请输入地区" class="easyui-validatebox" data-options="required:true" value="${SecPrintInfo.region}"></td>
				<td>设备编号</td>
				<td><input name="devno" type="text" placeholder="请输入设备编号" class="easyui-validatebox" data-options="required:true"
					value="${SecPrintInfo.devno}"></td>
			</tr>

			<tr>
				<td>所在房间号</td>
				<td><input name="roomno" type="text" placeholder="请输入统一信息设备准用证编号" class="easyui-validatebox" data-options="required:true"
					value="${SecPrintInfo.roomno}"></td>
				<td>资产号</td>
				<td><input name="propertyno" type="text" placeholder="请输入资产号" class="easyui-validatebox" data-options="required:true"
					value="${SecPrintInfo.propertyno}"></td>
			</tr>

			<tr>
				<td>责任部门</td>
				<%-- <td><input name="resdepart" type="text" placeholder="请输入责任部门" class="easyui-validatebox" data-options="required:true"
					value="${SecPrintInfo.resdepart}"></td> --%>
				<td><input class="easyui-combotree" id="resdepart" name="resdepart" value="${SecPrintInfo.resdepart}"
					style="height: 30px; width: 150px" data-options="required:true"></input></td>
				<td>责任人</td>
				<%-- <td><input name="resperson" type="text" placeholder="请输入责任人" class="easyui-validatebox" data-options="required:true"
					value="${SecPrintInfo.resperson}"></td> --%>
				<td><select class="js-example-basic-single js-states form-control" id="resperson" name="resperson"
					value="${SecPrintInfo.resperson}" class="easyui-validatebox" data-options="required:true"></select></td>
			</tr>


			<tr>
				<td>品牌</td>
				<td><input name="brand" type="text" placeholder="请输入品牌" class="easyui-validatebox" data-options="required:true"
					value="${SecPrintInfo.brand}"></td>
				<td>型号</td>
				<td><input name="model" type="text" placeholder="请输入型号" class="easyui-validatebox" data-options="required:true"
					value="${SecPrintInfo.model}"></td>
			</tr>


			<tr>
				<td>主机序列号</td>
				<td><input name="specifications" type="text" placeholder="请输入主机序列号" class="easyui-validatebox" data-options="required:true"
					value="${SecPrintInfo.specifications}"></td>
				<td>序列号</td>
				<td><input name="serialno" type="text" placeholder="请输入序列号" class="easyui-validatebox" data-options="required:true"
					value="${SecPrintInfo.serialno}"></td>
			</tr>


			<tr>
				<td>使用日期</td>
				<td><input name="usedate" type="text" placeholder="请输入使用日期" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
					readonly="readonly" class="easyui-validatebox" data-options="required:true" value="${SecPrintInfo.usedate}"></td>
				<td>设备密级</td>
				<td><input name="devseclevel" type="text" placeholder="请输入设备密级" class="easyui-validatebox" data-options="required:true"
					value="${SecPrintInfo.devseclevel}"></td>
			</tr>

			<tr>
				<td>用途</td>
				<td><input name="purpose" type="text" placeholder="请输入用途" class="easyui-validatebox" data-options="required:true"
					value="${SecPrintInfo.purpose}"></td>
				<td>使用方式</td>
				<td><input name="usemethod" type="text" placeholder="请输入使用方式" class="easyui-validatebox" data-options="required:true"
					value="${SecPrintInfo.usemethod}"></td>
			</tr>
			<tr>
				<td>状态</td>
				<td><input name="infostatus" type="text" placeholder="请输入状态" class="easyui-validatebox" data-options="required:true"
					value="${SecPrintInfo.infostatus}"></td>
				<td>备注</td>
				<td><input name="remark" type="text" placeholder="请输入备注" class="easyui-validatebox" data-options="required:true"
					value="${SecPrintInfo.remark}"></td>
			</tr>
		</table>
	</div>
</div>