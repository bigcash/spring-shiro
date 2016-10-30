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
					<td>序号</td>
					<td><input name="id" type="hidden" value="${SecurityHostInfo.id}" /><input name="serialno" type="text" placeholder="请输入序号" class="easyui-validatebox" data-options="required:true" value="${SecurityHostInfo.serialno}"></td>
					<td>设备编号</td>
					<td><input name="devno" type="text" placeholder="请输入设备编号" class="easyui-validatebox" data-options="required:true"
						value="${SecurityHostInfo.devno}"></td>
				</tr>

				<tr>
					<td>资产编号</td>
					<td><input name="assetsno" type="text" placeholder="请输入资产编号" class="easyui-validatebox" data-options="required:true"
						value="${SecurityHostInfo.assetsno}"></td>
					<td>使用部门</td>
					<td><input name="usedepart" type="text" placeholder="请输入使用部门" class="easyui-validatebox" data-options="required:true" value="${SecurityHostInfo.usedepart}"></td>
				</tr>

				<tr>
					<td>负责人</td>
					<td><input name="resperson" type="text" placeholder="请输入负责人" class="easyui-validatebox" data-options="required:true" value="${SecurityHostInfo.resperson}"></td>
					<td>型号</td>
					<td><input name="model" type="text" placeholder="请输入型号" class=" easyui-validatebox" data-options="required:true" value="${SecurityHostInfo.model}"></td>
				</tr>


				<tr>
					<td>配置</td>
					<td><input name="configure" type="text" placeholder="请输入配置" class="easyui-validatebox" data-options="required:true" value="${SecurityHostInfo.configure}"></td>
					<td>显示器型号</td>
					<td><input name="displaymodel" type="text" placeholder="请输入显示器型号" class="easyui-validatebox" data-options="required:true" value="${SecurityHostInfo.displaymodel}"></td>
				</tr>


				<tr>
					<td>主机序列号</td>
					<td><input name="hostnumber" type="text" placeholder="请输入主机序列号" class="easyui-validatebox" data-options="required:true" value="${SecurityHostInfo.hostnumber}"></td>
					<td>硬盘ID</td>
					<td><input name="diskid" type="text" placeholder="请输入硬盘ID" class="easyui-validatebox" data-options="required:true" value="${SecurityHostInfo.diskid}"></td>
				</tr>


				<tr>
					<td>使用日期</td>
					<td><input name="usedate" type="text" placeholder="请输入使用日期" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
						readonly="readonly" class="easyui-validatebox" data-options="required:true" value="${SecurityHostInfo.usedate}"></td>
					<td>设备密级</td>
					<td><input name="secequipment" type="text" placeholder="请输入设备密级" class="easyui-validatebox" data-options="required:true" value="${SecurityHostInfo.secequipment}"></td>
				</tr>

				<tr>
					<td>MAC地址</td>
					<td><input name="mac" type="text" placeholder="请输MAC地址" class="easyui-validatebox" data-options="required:true" value="${SecurityHostInfo.mac}"></td>
					<td>用途</td>
					<td><input name="purpose" type="text" placeholder="请输入用途" class="easyui-validatebox" data-options="required:true" value="${SecurityHostInfo.purpose}"></td>
				</tr>
				<tr>
					<td>系统版本及安装时间</td>
					<td><input name="osinstall" type="text" placeholder="请输入系统版本及安装时间" class="easyui-validatebox" data-options="required:true" value="${SecurityHostInfo.osinstall}"></td>
					<td>房间号</td>
					<td><input name="roomid" type="text" placeholder="请输入房间号" class="easyui-validatebox" data-options="required:true" value="${SecurityHostInfo.roomid}"></td>
				</tr>
			
				<tr>
					<td>状态</td>
					<td><input name="infostatus" type="text" placeholder="请输入状态" class="easyui-validatebox" data-options="required:true" value="${SecurityHostInfo.status}"></td>
					<td></td>
					<td></td>
				</tr>
			</table>
	</div>
</div>