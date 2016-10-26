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
					<td>信息设备编号</td>
					<td><input name="id" type="hidden" value="${UnsecurityHostInfo.id}" /><input name="informdevno" type="text"
						placeholder="请输入信息设备编号" class="easyui-validatebox" data-options="required:true" value="${UnsecurityHostInfo.informdevno}"></td>
					<td>部门名称</td>
					<td><input name="departname" type="text" placeholder="请输入部门名称" class="easyui-validatebox" data-options="required:true"
						value="${UnsecurityHostInfo.departname}"></td>
				</tr>

				<tr>
					<td>责任人</td>
					<td><input name="resperson" type="text" placeholder="请输入责任人" class="easyui-validatebox" data-options="required:true"
						value="${UnsecurityHostInfo.resperson}"></td>
					<td>设备密级</td>
					<td><input name="seclevel" type="text" placeholder="请输入设备密级" class="easyui-validatebox" data-options="required:true"
						value="${UnsecurityHostInfo.seclevel}"></td>
				</tr>

				<tr>
					<td>资产编号</td>
					<td><input name="assetsno" type="text" placeholder="请输入资产编号" class="easyui-validatebox" data-options="required:true"
						value="${UnsecurityHostInfo.assetsno}"></td>
					<td>资产归属</td>
					<td><input name="assersown" type="text" placeholder="请输入资产归属" class=" easyui-validatebox" data-options="required:true"
						value="${UnsecurityHostInfo.assersown}"></td>
				</tr>


				<tr>
					<td>设备出厂编号</td>
					<td><input name="equipmentno" type="text" placeholder="请输入设备出厂编号" class="easyui-validatebox" data-options="required:true"
						value="${UnsecurityHostInfo.equipmentno}"></td>
					<td>设备编号</td>
					<td><input name="devno" type="text" placeholder="请输入设备编号" class="easyui-validatebox" data-options="required:true"
						value="${UnsecurityHostInfo.devno}"></td>
				</tr>


				<tr>
					<td>硬盘序列号</td>
					<td><input name="diskno" type="text" placeholder="请输入硬盘序列号" class="easyui-validatebox" data-options="required:true"
						value="${UnsecurityHostInfo.diskno}"></td>
					<td>规格</td>
					<td><input name="specification" type="text" placeholder="请输入规格" class="easyui-validatebox" data-options="required:true"
						value="${UnsecurityHostInfo.specification}"></td>
				</tr>


				<tr>
					<td>启用时间</td>
					<td><input name="starttime" type="text" placeholder="请输入启用时间" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
						readonly="readonly" class="easyui-validatebox" data-options="required:true" value="${UnsecurityHostInfo.starttime}"></td>
					<td>IP地址</td>
					<td><input name="ipaddress" type="text" placeholder="请输入IP地址" class="easyui-validatebox" data-options="required:true"
						value="${UnsecurityHostInfo.ipaddress}"></td>
				</tr>

				<tr>
					<td>MAC地址</td>
					<td><input name="mac" type="text" placeholder="请输入MAC地址" class="easyui-validatebox" data-options="required:true"
						value="${UnsecurityHostInfo.mac}"></td>
					<td>物理位置</td>
					<td><input name="location" type="text" placeholder="请输入物理位置" class="easyui-validatebox" data-options="required:true"
						value="${UnsecurityHostInfo.location}"></td>
				</tr>
				<tr>
					<td>操作系统版本</td>
					<td><input name="osversion" type="text" placeholder="请输入操作系统版本" class="easyui-validatebox" data-options="required:true"
						value="${UnsecurityHostInfo.osversion}"></td>
					<td>操作系统安装时间</td>
					<td><input name="osinstaltime" type="text" placeholder="请输入操作系统安装时间"
						onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})" readonly="readonly" class="easyui-validatebox"
						data-options="required:true" value="${UnsecurityHostInfo.osinstaltime}"></td>
				</tr>
				<tr>
					<td>上网许可证</td>
					<td><input name="surfcertif" type="text" placeholder="请输入上网许可证" class="easyui-validatebox" data-options="required:true"
						value="${UnsecurityHostInfo.surfcertif}"></td>
					<td>使用情况</td>
					<td><input name="usestatus" type="text" placeholder="请输入使用情况" class="easyui-validatebox" data-options="required:true"
						value="${UnsecurityHostInfo.usestatus}"></td>
				</tr>
				<tr>
					<td>备注</td>
					<td><input name="remark" type="text" placeholder="请输入设备类型" class="easyui-validatebox" data-options="required:true"
						value="${UnsecurityHostInfo.remark}"></td>
					<td></td>
					<td></td>
				</tr>

			</table>
		</form>
	</div>
</div>