<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp"%>
<script type="text/javascript" src="${staticPath }/static/easyui/ajaxfileupload.js" charset="utf-8"></script>
<script type="text/javascript">
	function ajaxFileUpload() {
		$.ajaxFileUpload({
			url : '${path }/notePadInfoManage/upload', //需要链接到服务器地址
			secureuri : false,
			fileElementId : 'file', //文件选择框的id属性
			dataType : 'json', //服务器返回的格式类型
			success : function(data, status) //成功
			{
				var code = data.code;
				if (code == 1) {
					//parent.$.modalDialog.openner_dataGrid.datagrid('reload');
					//alert("上传成功！");
					parent.$.messager.alert('提示', "上传成功", 'info');
					//之所以能在这里调用到parent.$.modalDialog.openner_dataGrid这个对象，是因为user.jsp页面预定义好了
					//parent.$.modalDialog.handler.dialog('close');
				} else {
					//alert("上传失败！");
					parent.$.messager.alert('提示', "上传失败！", 'error');
				}
			},
			error : function(data, status, e) //异常
			{
				//alert("出错了，请重新上传！");
				parent.$.messager.alert('提示', "出错了，请重新上传！", 'error');
			}
		}
		);
		return false;
	}
</script>
<div>
	<table>
		<tr height="50px">
			<td>
				<form method="post" id="uploadForm" enctype="multipart/form-data">
					<input type="file" id="file" name="file" style="padding-left:10px;" /> <a href="javascript:void(0)" onclick="ajaxFileUpload()"
						class="easyui-linkbutton" iconCls="icon-ok">上传</a>
				</form>
			</td>
		</tr>
	</table>
	<div id="showMessage">
	
	</div>
</div>
