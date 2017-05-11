<%--标签 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="edge" />
<link rel="shortcut icon" href="${staticPath }/static/style/images/favicon.ico" />
<!-- [my97日期时间控件] -->
<script type="text/javascript" src="${staticPath }/static/My97DatePicker/WdatePicker.js" charset="utf-8"></script>
<!-- [jQuery] -->
<script type="text/javascript" src="${staticPath }/static/easyui/jquery.min.js" charset="utf-8"></script>
<!-- [EasyUI] -->
<link id="easyuiTheme" rel="stylesheet" type="text/css" href="${staticPath }/static/easyui/themes/default/easyui.css" />
<link id="easyuiTheme" rel="stylesheet" type="text/css" href="${staticPath }/static/easyui/themes/icon.css" />
<script type="text/javascript" src="${staticPath }/static/easyui/jquery.easyui.min.js" charset="utf-8"></script>
<script type="text/javascript" src="${staticPath }/static/easyui/locale/easyui-lang-zh_CN.js" charset="utf-8"></script>
<!-- [扩展JS] -->
<script type="text/javascript" src="${staticPath }/static/extJs.js" charset="utf-8"></script>
<!-- [扩展样式] -->
<link rel="stylesheet" type="text/css" href="${staticPath }/static/style/css/dreamlu.css" />
<link rel="stylesheet" type="text/css" href="${staticPath }/static/icommon.css" />
<%-- <link rel="stylesheet" type="text/css" href="${staticPath }/static/style/css/ajaxfileupload.css"> --%>

<link id="select2Theme" rel="stylesheet" type="text/css" href="${staticPath }/static/style/css/select2.css" />
<script type="text/javascript" src="${staticPath }/static/select2/select2.min.js" charset="utf-8"></script>
<script type="text/javascript">
	var basePath = "${staticPath }";
	if (!window.JSON) {
	    window.JSON = {
	        parse: function(jsonStr) {
	            return eval('(' + jsonStr + ')');
	        },
	        stringify: function(jsonObj) {
	            var result = '',
	                curVal;
	            if (jsonObj === null) {
	                return String(jsonObj);
	            }
	            switch (typeof jsonObj) {
	                case 'number':
	                case 'boolean':
	                    return String(jsonObj);
	                case 'string':
	                    return '"' + jsonObj + '"';
	                case 'undefined':
	                case 'function':
	                    return undefined;
	            }

	            switch (Object.prototype.toString.call(jsonObj)) {
	                case '[object Array]':
	                    result += '[';
	                    for (var i = 0, len = jsonObj.length; i < len; i++) {
	                        curVal = JSON.stringify(jsonObj[i]);
	                        result += (curVal === undefined ? null : curVal) + ",";
	                    }
	                    if (result !== '[') {
	                        result = result.slice(0, -1);
	                    }
	                    result += ']';
	                    return result;
	                case '[object Date]':
	                    return '"' + (jsonObj.toJSON ? jsonObj.toJSON() : jsonObj.toString()) + '"';
	                case '[object RegExp]':
	                    return "{}";
	                case '[object Object]':
	                    result += '{';
	                    for (i in jsonObj) {
	                        if (jsonObj.hasOwnProperty(i)) {
	                            curVal = JSON.stringify(jsonObj[i]);
	                            if (curVal !== undefined) {
	                                result += '"' + i + '":' + curVal + ',';
	                            }
	                        }
	                    }
	                    if (result !== '{') {
	                        result = result.slice(0, -1);
	                    }
	                    result += '}';
	                    return result;

	                case '[object String]':
	                    return '"' + jsonObj.toString() + '"';
	                case '[object Number]':
	                case '[object Boolean]':
	                    return jsonObj.toString();
	            }
	        }
	    };
	}
</script>