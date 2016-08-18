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

</script>

<body>
	<form id="uploadForm" >
		<input id="file" type="file" size="45" name="file"  class="easyui-validatebox" data-options="required:true" />
		<button class="button" id="buttonUpload" onclick="fileUpload();">上传</button>
	</form>
</body>
</html>