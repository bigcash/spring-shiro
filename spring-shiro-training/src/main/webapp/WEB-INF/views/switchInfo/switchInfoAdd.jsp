<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp"%>
<script type="text/javascript">
	$(function() {
		$('#addForm').form({
			url : '${path }/switchInfoManage/add',
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
					parent.$.messager.alert('提示', result.msg, 'warning');
				}
			}
		});

	});
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
	<div data-options="region:'center',border:false" title="" style="overflow: hidden; padding: 3px;">
		<form id="addForm" method="post">
			<table class="grid">
				<tr>
					<td>地区</td>
					<td><input name="region" type="text" placeholder="请输入地区" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>准用证编号</td>
					<td><input name="certifno" type="text" placeholder="请输入准用证编号" class="easyui-validatebox" data-options="required:true"
						value=""></td>
				</tr>

				<tr>
					<td>部门名称</td>
					<td><input name="depname" type="text" placeholder="请输入部门名称" class="easyui-validatebox" data-options="required:true"
						value=""></td>
					<td>责任人</td>
					<td><input name="resperson" type="text" placeholder="请输入责任人" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>

				<tr>
					<td>设备名称</td>
					<td><input name="devname" type="text" placeholder="请输入设备名称" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>IP地址</td>
					<td><input name="ipaddress" type="text" placeholder="请输入IP地址"  class=" easyui-validatebox" data-options="required:true" value=""></td>
				</tr>


				<tr>
					<td>MAC地址</td>
					<td><input name="mac" type="text" placeholder="请输入MAC地址" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>型号</td>
					<td><input name="model" type="text" placeholder="请输入型号" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>


				<tr>
					<td>配置</td>
					<td><input name="equipment" type="text" placeholder="请输入配置" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>信息点</td>
					<td><input name="informpoint" type="text" placeholder="请输入信息点" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>


				<tr>
					<td>终端计算机类型</td>
					<td><input name="termachtype" type="text" placeholder="请输入终端计算机类型" class="easyui-validatebox" data-options="required:true"
						value=""></td>
					<td>终端计算机用途</td>
					<td><input name="termachpurpose" type="text" placeholder="请输入终端计算机用途" class="easyui-validatebox" data-options="required:true"
						value=""></td>
				</tr>

				<tr>
					<td>设备序列号</td>
					<td><input name="devno" type="text" placeholder="请输入设备序列号" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>操作系统</td>
					<td><input name="os" type="text" placeholder="请输入操作系统" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>
				<tr>
					<td>密级</td>
					<td><input name="osinstaltime" type="text" placeholder="请输入密级" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>计算机所在地</td>
					<td><input name="location" type="text" placeholder="请输入计算机所在地" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>
				<tr>
					<td>硬盘序号</td>
					<td><input name="diskno" type="text" placeholder="请输入硬盘序号" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>杀毒厂商</td>
					<td><input name="antiviruscomp" type="text" placeholder="请输入杀毒厂商" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>
				<tr>
					<td>主机审计</td>
					<td><input name="hostaudit" type="text" placeholder="请输入主机审计" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>介质管理</td>
					<td><input name="medmanager" type="text" placeholder="请输入介质管理" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>
				<tr>
					<td>对应刷卡器IP</td>
					<td><input name="cardid" type="text" placeholder="请输入对应刷卡器IP" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>对应刷卡器MAC</td>
					<td><input name="cardmac" type="text" placeholder="请输入对应刷卡器MAC" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>
				<tr>
					<td>对应刷卡器信息点</td>
					<td><input name="cardinfo" type="text" placeholder="请输入对应刷卡器信息点" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>状态</td>
					<td><input name="status" type="text" placeholder="请输入状态" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>
				<tr>
					<td>备注</td>
					<td><input name="remark" type="text" placeholder="请输入备注" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td></td>
					<td></td>
				</tr>

			</table>
		</form>
	</div>
</div>