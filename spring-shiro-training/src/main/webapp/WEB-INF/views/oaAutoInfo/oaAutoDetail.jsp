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
<div class="easyui-layout" data-options="fit:true,border:false">
	<div data-options="region:'center',border:false" title="" style="overflow: hidden; padding: 3px;">
		<form id="editForm" method="post">

			<table class="grid">


				<tr>
					<td>设备编号</td>
					<td><input name="id" type="hidden" value="${OaAutoInfo.id}" /><input name="devno" type="text" placeholder="请输入设备编号"
						class="easyui-validatebox" data-options="required:true" value="${OaAutoInfo.devno}"></td>
					<td>部门名称</td>
					<td><input name="departname" type="text" placeholder="请输入部门名称" class="easyui-validatebox" data-options="required:true"
						value="${OaAutoInfo.departname}"></td>
				</tr>

				<tr>
					<td>责任人</td>
					<td><input name="resperson" type="text" placeholder="请输入责任人" class="easyui-validatebox" data-options="required:true"
						value="${OaAutoInfo.resperson}"></td>
					<td>密级</td>
					<td><input name="seclevel" type="text" placeholder="请输入密级" class="easyui-validatebox" data-options="required:true"
						value="${OaAutoInfo.seclevel}"></td>
				</tr>

				<tr>
					<td>设备名称</td>
					<td><input name="devname" type="text" placeholder="请输入设备名称" class="easyui-validatebox" data-options="required:true"
						value="${OaAutoInfo.devname}"></td>
					<td>品牌</td>
					<td><input name="brand" type="text" placeholder="请输入品牌" class=" easyui-validatebox" data-options="required:true"
						value="${OaAutoInfo.brand}"></td>
				</tr>


				<tr>
					<td>型号</td>
					<td><input name="model" type="text" placeholder="请输入型号" class="easyui-validatebox" data-options="required:true"
						value="${OaAutoInfo.model}"></td>
					<td>容量</td>
					<td><input name="capacity" type="text" placeholder="请输入容量" class="easyui-validatebox" data-options="required:true"
						value="${OaAutoInfo.capacity}"></td>
				</tr>


				<tr>
					<td>序列号</td>
					<td><input name="serialno" type="text" placeholder="请输入序列号" class="easyui-validatebox" data-options="required:true"
						value="${OaAutoInfo.serialno}"></td>
					<td>启用时间</td>
					<td><input name="usedate" placeholder="请输入启用时间" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
						class="easyui-validatebox" data-options="required:true" value="${OaAutoInfo.usedate}"></td>
				</tr>


				<tr>
					<td>用途</td>
					<td><input name="purpose" type="text" placeholder="请输入用途" class="easyui-validatebox" data-options="required:true"
						value="${OaAutoInfo.purpose}"></td>
					<td>使用地点</td>
					<td><input name="useaddress" type="text" placeholder="请输入设备密级" class="easyui-validatebox" data-options="required:true"
						value="${OaAutoInfo.useaddress}"></td>
				</tr>

				<tr>
					<td>使用情况</td>
					<td><input name="usestatus" type="text" placeholder="请输入使用情况" class="easyui-validatebox" data-options="required:true"
						value="${OaAutoInfo.usestatus}"></td>
					<td>备注</td>
					<td><input name="remark" type="text" placeholder="请输入备注" class="easyui-validatebox" data-options="required:true"
						value="${OaAutoInfo.remark}"></td>
				</tr>

			</table>
		</form>
	</div>
</div>