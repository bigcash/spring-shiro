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
				<td><input name="serialno" type="text" placeholder="请输入序号" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.serialno}"></td>
				<td>新信息设备准用证编号</td>
				<td><input name="newcertifno" type="text" placeholder="请输入新信息设备准用证编号" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.newcertifno}"></td>
			</tr>

			<tr>
				<td>统一信息设备准用证编号</td>
				<td><input name="unicertifno" type="text" placeholder="请输入统一信息设备准用证编号" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.unicertifno}"></td>
				<td>责任部门</td>
				<td><input name="respondepart" type="text" placeholder="请输入责任部门" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.respondepart}"></td>
			</tr>

			<tr>
				<td>负责人</td>
				<td><input name="marcher" type="text" placeholder="请输入负责人" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.marcher}"></td>
				<td>型号</td>
				<td><input name="model" type="text" placeholder="请输入型号" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.model}"></td>
			</tr>


			<tr>
				<td>配置</td>
				<td><input name="equipment" type="text" placeholder="请输入配置" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.equipment}"></td>
				<td>设备编号</td>
				<td><input name="devno" type="text" placeholder="请输入设备编号" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.devno}"></td>
			</tr>


			<tr>
				<td>硬盘ID</td>
				<td><input name="diskno" type="text" placeholder="请输入硬盘ID" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.diskno}"></td>
				<td>系统版本</td>
				<td><input name="osversion" type="text" placeholder="请输入系统版本" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.osversion}"></td>
			</tr>


			<tr>
				<td>使用日期</td>
				<td><input name="usedate" placeholder="请输入使用日期" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
					class="easyui-validatebox" data-options="required:true" value="${serverInfo.usedate}"></td>
				<td>设备密级</td>
				<td><input name="secequipment" type="text" placeholder="请输入设备密级" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.secequipment}"></td>
			</tr>

			<tr>
				<td>MAC地址</td>
				<td><input name="mac" type="text" placeholder="MAC地址" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.mac}"></td>
				<td>IP地址</td>
				<td><input name="ipaddress" type="text" placeholder="请输入IP地址" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.ipaddress}"></td>
			</tr>
			<tr>
				<td>所在房间</td>
				<td><input name="roomaddress" type="text" placeholder="请输入所在房间" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.roomaddress}"></td>
				<td>使用状态</td>
				<td><input name="usestatus" type="text" placeholder="请输入使用状态" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.usestatus}"></td>
			</tr>
			<tr>
				<td>主要用途</td>
				<td><input name="mainuse" type="text" placeholder="请输入主要用途" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.mainuse}"></td>
				<td>接入信息点</td>
				<td><input name="accesspoint" type="text" placeholder="请输入接入信息点" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.accesspoint}"></td>
			</tr>
			<tr>
				<td>设备类型</td>
				<td><input name="devtype" type="text" placeholder="请输入设备类型" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.devtype}"></td>
				<td>备注</td>
				<td><input name="remark" type="text" placeholder="请输入备注" class="easyui-validatebox" data-options="required:true"
					value="${serverInfo.remark}"></td>
			</tr>

		</table>
	</div>
</div>