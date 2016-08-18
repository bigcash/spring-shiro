<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp"%>
<html>
<head>
<%@ include file="/commons/basejs.jsp"%>
<meta http-equiv="X-UA-Compatible" content="edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function fileUpload() {
    alert("傻逼不");
	$('#uploadForm').form({
		url : '${path }/computerManage/upload',
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
}
</script>

<body>
	<form id="uploadForm" >
		<input id="file" type="file" size="45" name="file"  class="easyui-validatebox" data-options="required:true" />
		<button class="button" id="buttonUpload" onclick="fileUpload();">上传</button>
	</form>
</body>
</html>