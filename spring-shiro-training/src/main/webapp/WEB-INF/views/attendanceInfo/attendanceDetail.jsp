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
		<table class="grid">
			<tr>
				<td>资产归属</td>
				<td><input name="bus_type" type="hidden" value="修改" /><input name="id" type="hidden" value="${AttendanceInfo.id}" /><input
					name="propertyown" type="text" placeholder="请输入资产归属" class="easyui-validatebox" data-options="required:true"
					value="${AttendanceInfo.propertyown}"></td>
				<td>设备编号</td>
				<td><input name="devno" type="text" placeholder="请输入设备编号" class="easyui-validatebox" data-options="required:true"
					value="${AttendanceInfo.devno}"></td>
			</tr>

			<tr>
				<td>部门</td>
				<td><input name="department" type="text" placeholder="请输入部门" class="easyui-validatebox" data-options="required:true"
					value="${AttendanceInfo.department}"></td>
				<td>设备名称</td>
				<td><input name="devname" type="text" placeholder="请输入设备名称" class="easyui-validatebox" data-options="required:true"
					value="${AttendanceInfo.devname}"></td>
			</tr>

			<tr>
				<td>责任人</td>
				<td><input name="resperson" type="text" placeholder="请输入负责人" class="easyui-validatebox" data-options="required:true"
					value="${AttendanceInfo.resperson}"></td>
				<td>管理人</td>
				<td><input name="manager" type="text" placeholder="请输入管理人" class=" easyui-validatebox" data-options="required:true"
					value="${AttendanceInfo.manager}"></td>
			</tr>


			<tr>
				<td>办公自动化设备编号</td>
				<td><input name="oaautono" type="text" placeholder="请输入办公自动化设备编号" class="easyui-validatebox" data-options="required:true"
					value="${AttendanceInfo.oaautono}"></td>
				<td>密级</td>
				<td><input name="devno" type="text" placeholder="请输入密级" class="easyui-validatebox" data-options="required:true"
					value="${AttendanceInfo.devno}"></td>
			</tr>


			<tr>
				<td>品牌/型号</td>
				<td><input name="brandno" type="text" placeholder="请输入品牌/型号" class="easyui-validatebox" data-options="required:true"
					value="${AttendanceInfo.brandno}"></td>
				<td>所在位置</td>
				<td><input name="location" type="text" placeholder="请输入所在位置" class="easyui-validatebox" data-options="required:true"
					value="${AttendanceInfo.location}"></td>
			</tr>


			<tr>
				<td>配备日期</td>
				<td><input name="usedate" placeholder="请输入配备日期" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
					class="easyui-validatebox" data-options="required:true" value="${AttendanceInfo.usedate}"></td>
				<td>使用情况</td>
				<td><input name="usestatus" type="text" placeholder="请输入使用情况" class="easyui-validatebox" data-options="required:true"
					value="${AttendanceInfo.usestatus}"></td>
			</tr>

			<tr>
				<td>备注</td>
				<td><input name="remark" type="text" placeholder="请输入备注" class="easyui-validatebox" data-options="required:true"
					value="${AttendanceInfo.remark}"></td>
				<td></td>
				<td></td>
			</tr>

		</table>
	</div>
</div>