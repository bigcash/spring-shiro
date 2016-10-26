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
					<td>部门</td>
					<td><input name="id" type="hidden" value="${PlotterInfo.id}" /><input name="resdepart" type="text" placeholder="请输入部门"
						class="easyui-validatebox" data-options="required:true" value="${PlotterInfo.resdepart}"></td>
					<td>责任人</td>
					<td><input name="resperson" type="text" placeholder="请输入责任人" class="easyui-validatebox" data-options="required:true"
						value="${PlotterInfo.resperson}"></td>
				</tr>

				<tr>
					<td>设备编号</td>
					<td><input name="devno" type="text" placeholder="请输入设备编号" class="easyui-validatebox" data-options="required:true"
						value="${PlotterInfo.devno}"></td>
					<td>设备密级</td>
					<td><input name="devseclevel" type="text" placeholder="请输入设备密级" class="easyui-validatebox" data-options="required:true"
						value="${PlotterInfo.devseclevel}"></td>
				</tr>

				<tr>
					<td>品牌型号</td>
					<td><input name="brand" type="text" placeholder="请输入品牌型号" class="easyui-validatebox" data-options="required:true"
						value="${PlotterInfo.brand}"></td>
					<td>用途</td>
					<td><input name="purpose" type="text" placeholder="请输入用途" class=" easyui-validatebox" data-options="required:true"
						value="${PlotterInfo.purpose}"></td>
				</tr>


				<tr>
					<td>设备生产日期</td>
					<td><input name="devproductdate" placeholder="请输入设备生产日期" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
						class="easyui-validatebox" data-options="required:true" value="${PlotterInfo.devproductdate}"></td>
					<td>出厂编号</td>
					<td><input name="productno" type="text" placeholder="请输入出厂编号" class="easyui-validatebox" data-options="required:true"
						value="${PlotterInfo.productno}"></td>
				</tr>


				<tr>
					<td>硬件配置</td>
					<td><input name="hardwareconf" type="text" placeholder="请输入硬件配置" class="easyui-validatebox" data-options="required:true"
						value="${PlotterInfo.hardwareconf}"></td>
					<td>硬盘序列号</td>
					<td><input name="diskno" type="text" placeholder="请输入硬盘序列号" class="easyui-validatebox" data-options="required:true"
						value="${PlotterInfo.diskno}"></td>
				</tr>
				<tr>
					<td>MAC地址</td>
					<td><input name="mac" type="text" placeholder="MAC地址" class="easyui-validatebox" data-options="required:true"
						value="${PlotterInfo.mac}"></td>
					<td>操作系统</td>
					<td><input name="os" type="text" placeholder="请输入操作系统" class="easyui-validatebox" data-options="required:true"
						value="${PlotterInfo.os}"></td>
				</tr>

				<tr>
					<td>系统安装时间</td>
					<td><input name="osinsttime" placeholder="请输入系统安装时间" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
						class="easyui-validatebox" data-options="required:true" value="${PlotterInfo.osinsttime}"></td>
					<td></td>
					<td></td>
				</tr>

			</table>
		</form>
	</div>
</div>