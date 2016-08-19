<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp"%>
<script type="text/javascript" src="${staticPath }/static/easyui/ajaxfileupload.js" charset="utf-8"></script>
<script type="text/javascript">
	function ajaxFileUpload() {
		$.ajaxFileUpload({
			url : '${path }/computerManage/upload', //需要链接到服务器地址
			secureuri : false,
			fileElementId : 'file', //文件选择框的id属性
			dataType : 'json', //服务器返回的格式类型
			success : function(data, status) //成功
			{
				alert("上传成功！");
				/* var json = eval("(" + data + ")");//解析返回的json
				var code = json.code;
				alert("json:"+json);
				alert("code:"+code);
				if (code == 1) {
					alert("上传成功！");
				} else {
					alert("上传失败！");
				} */

			},
			error : function(data, status, e) //异常
			{
				alert("出错了，请重新上传！");
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
				<form method="post" enctype="multipart/form-data">
					<input type="file" id="file" name="file" /> <a href="javascript:void(0)" onclick="ajaxFileUpload()"
						class="easyui-linkbutton" iconCls="icon-ok">上传</a>
				</form>
			</td>
		</tr>
	</table>
</div>
