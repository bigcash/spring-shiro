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

		var depname_value = $("#depname").val();
		//alert(depname_value);
		$('#depname').combotree({
			url : '${path }/organization/tree',
			parentField : 'pid',
			lines : true,
			panelHeight : 'auto',
			value : depname_value
		});
		$('#editForm').form({
			url : '${path }/secProdInfoManage/dataSave',
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
				<td>部门名称</td>
				<td><input name="bus_type" type="hidden" value="修改" /> <input name="id" type="hidden" value="${SecurityProductInfo.id}" /> <%-- <input	name="depname" type="text" placeholder="请输入部门名称" class="easyui-validatebox" data-options="required:true"
					value="${SecurityProductInfo.depname}"> --%> <input class="easyui-combotree" id="depname" name="depname"
					value="${SecurityProductInfo.depname}" style="height: 30px; width: 150px" data-options="required:true"></input></td>
				<td>责任人</td>
				<%-- <td><input name="resperson" type="text" placeholder="请输入责任人" class="easyui-validatebox" data-options="required:true"
					value="${SecurityProductInfo.resperson}"></td> --%>
				<td><select class="js-example-basic-single js-states form-control" id="resperson" name="resperson"
					value="${SecurityProductInfo.resperson}" class="easyui-validatebox" data-options="required:true"></select></td>
			</tr>

			<tr>
				<td>密级</td>
				<td><input name="securitylevel" type="text" placeholder="请输入密级" class="easyui-validatebox" data-options="required:true"
					value="${SecurityProductInfo.securitylevel}"></td>
				<td>新命名</td>
				<td><input name="newname" type="text" placeholder="请输入新命名" class="easyui-validatebox" data-options="required:true"
					value="${SecurityProductInfo.newname}"></td>
			</tr>

			<tr>
				<td>交换机品牌</td>
				<td><input name="switchbrand" type="text" placeholder="请输入交换机品牌" class="easyui-validatebox" data-options="required:true"
					value="${SecurityProductInfo.switchbrand}"></td>
				<td>出厂编号</td>
				<td><input name="factoryno" type="text" placeholder="请输入出厂编号" class=" easyui-validatebox" data-options="required:true"
					value="${SecurityProductInfo.factoryno}"></td>
			</tr>


			<tr>
				<td>交换机IP</td>
				<td><input name="switchip" type="text" placeholder="请输入交换机IP" class="easyui-validatebox" data-options="required:true"
					value="${SecurityProductInfo.switchip}"></td>
				<td>交换机MAC地址</td>
				<td><input name="switchmac" type="text" placeholder="请输入交换机MAC地址" class="easyui-validatebox" data-options="required:true"
					value="${SecurityProductInfo.switchmac}"></td>
			</tr>


			<tr>
				<td>物理位置</td>
				<td><input name="location" type="text" placeholder="请输入物理位置" class="easyui-validatebox" data-options="required:true"
					value="${SecurityProductInfo.location}"></td>
				<td>上联端口号</td>
				<td><input name="port" type="text" placeholder="请输入上联端口号" class="easyui-validatebox" data-options="required:true"
					value="${SecurityProductInfo.port}"></td>
			</tr>


			<tr>
				<td>配线架</td>
				<td><input name="patchpanel" type="text" placeholder="请输入配线架" class="easyui-validatebox" data-options="required:true"
					value="${SecurityProductInfo.patchpanel}"></td>
				<td>用途</td>
				<td><input name="purpose" type="text" placeholder="请输入用途" class="easyui-validatebox" data-options="required:true"
					value="${SecurityProductInfo.purpose}"></td>
			</tr>

			<tr>
				<td>状态情况</td>
				<td><input name="infostatus" type="text" placeholder="请输入状态情况" class="easyui-validatebox" data-options="required:true"
					value="${SecurityProductInfo.infostatus}"></td>
				<td>地域</td>
				<td><input name="region" type="text" placeholder="请输入地域" class="easyui-validatebox" data-options="required:true"
					value="${SecurityProductInfo.region}"></td>
			</tr>
			<tr>
				<td>备注</td>
				<td><input name="remark" type="text" placeholder="请输入备注" class="easyui-validatebox" data-options="required:true"
					value="${SecurityProductInfo.remark}"></td>
				<td>设备编号</td>
				<td><input name="devno" type="text" placeholder="请输入设备编号" class="easyui-validatebox" data-options="required:true"
					value="${SecurityProductInfo.devno}"></td>
			</tr>

		</table>
	</div>
</div>