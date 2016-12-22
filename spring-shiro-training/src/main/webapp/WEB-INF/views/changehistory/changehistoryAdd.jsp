<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp"%>
<script type="text/javascript">
	$(function() {
		/**
		 * 页面加载初始化下拉菜单
		 */
		$("#account_name").select2();

		$.post("${path }/changeOrder/queryParam", {
			param : "新增"
		}, function(data) {
			var bToObj = JSON.parse(data);
			for (var i = 0; i < bToObj.length; i++) {
				$("#account_name").append(
						"<option value=" + bToObj[i].key + ">"
								+ bToObj[i].value + "</option>");
			}
			//initHtml();
		});
		$("#account_name").change(function() {
			initHtml();
		});

	});

	function initHtml() {
		var account_name = $("#account_name").find("option:selected").val();
		if (account_name == '' || account_name == null) {
			return false;
		}
		var url = account_name.split("_")[1];
		$.post("${path }" + url, {

		}, function(data) {
			$("#addTable").html();
			$("#addTable").html(data);
			
		});
	}
</script>

<style type="text/css">
select {
	display: block;
	height: 34px;
	width: 145px;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	float: left
}

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

td, select {
	width: 160px;
}
</style>

<div class="easyui-layout" data-options="fit:true,border:false">
	<div data-options="region:'center',border:false" title="" style="overflow: hidden; padding: 10px;">
		<form id="addForm" method="post">
			<div style="width: 98%">
				<table class="grid">
					<tr>
						<td>台帐名称</td>
						<td><select class="js-example-basic-single js-states form-control" id="account_name"><option value="">--请选择--</option></select> <!-- <select id="account_name">
						</select> --></td>
						<td>新增单编号</td>
						<td><input name="change_no" type="text" placeholder="请输入变更单编号" class="easyui-validatebox" data-options="required:true" value=""></td>
					</tr>
				</table>
			</div>

			<div id="addTable" style="overflow-y: auto; width: 100%; height: 300px"></div>
		</form>
	</div>
</div>