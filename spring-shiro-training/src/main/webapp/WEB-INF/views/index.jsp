<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/commons/basejs.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
<script type="text/javascript">
	//根据当前登录用户角色查询菜单
	var index_layout;
	var index_tabs;
	var layout_west_tree;
	var layout_west_tree_url = '${path }/resource/tree';

	$(function() {
		//异步请求数据 
		$
				.ajax({
					type : "post",
					url : layout_west_tree_url,
					cache : false,
					async : false,
					dataType : "json",
					success : function(datas) {
						var parentTreeLenth = datas.length;
						var divOuterContent = '';
						for (var i = 0; i < parentTreeLenth; i++) {
							divOuterContent += '<div class="panel" > '
									+ '<div class="panel-header accordion-header ';
									
									divOuterContent += '"> <div class="panel-title panel-with-icon" onclick="showItem(this)">'
									+ datas[i].text
									+ '</div>'
									+ '<div class="panel-icon icon '+datas[i].iconCls+'"></div><div class="panel-tool">'
									+ '<a class="accordion-collapse accordion-expand" href="javascript:void(0)" onclick="changeCss(this)" >'
									+ '</a></div></div>'
									+ '<div  class="panel-body accordion-body" style="overflow: auto; display: none;"> ';
							var childTreeData = datas[i].children;
							for (var j = 0; j < childTreeData.length; j++) {
								//alert(childTreeData[j].text);
								var itemName = childTreeData[j].text;
								var itemUrl = "${path }"
										+ childTreeData[j].attributes;
								divOuterContent += '<div class="nav-item"> <a href=javascript:addTab("'
										+ itemName
										+ '","'
										+ itemUrl
										+ '","menu_icon_datadeal")>';
								divOuterContent += '<span class="icon '+childTreeData[j].iconCls+'">&nbsp;</span> <span>'
										+ itemName + '</span></a></div>';
							}
							divOuterContent += '</div></div>';

						}
						//alert(divOuterContent);
						$('#layout_west_tree').html(divOuterContent);

					}

				});

		index_layout = $('#index_layout').layout({
			fit : true
		});
		index_tabs = $('#index_tabs').tabs(
				{
					fit : true,
					border : false,
					tools : [
							{
								iconCls : 'icon-home',
								handler : function() {
									index_tabs.tabs('select', 0);
								}
							},
							{
								iconCls : 'icon-refresh',
								handler : function() {
									var index = index_tabs.tabs('getTabIndex',
											index_tabs.tabs('getSelected'));
									index_tabs.tabs('getTab', index).panel(
											'open').panel('refresh');
								}
							},
							{
								iconCls : 'icon-del',
								handler : function() {
									var index = index_tabs.tabs('getTabIndex',
											index_tabs.tabs('getSelected'));
									var tab = index_tabs.tabs('getTab', index);
									if (tab.panel('options').closable) {
										index_tabs.tabs('close', index);
									}
								}
							} ]
				});
	});

	function showItem(obj) {
		changeCss($(obj).next().next().children());
	}

	function changeCss(obj) {

		if ($(obj).attr("class") == 'accordion-collapse') {
			$(obj).addClass("accordion-expand");
			$(obj).parent().parent().next().hide();

		} else {
			$("[class='accordion-collapse']").each(function() {
				$(this).addClass("accordion-expand");
			});
			$(obj).removeClass("accordion-expand");
			$("[class='panel-body accordion-body']").each(function() {
				$(this).prev().removeClass("accordion-header-selected");
				$(this).hide();
			});
			$(obj).parent().parent().next().show();
			$(obj).parent().parent().addClass("accordion-header-selected");
		}

	}

	function addTab(title, href, icon) {
		var tt = $('#index_tabs');
		icon = icon || 'menu_icon_service';
		if (tt.tabs('exists', title)) {
			tt.tabs('select', title);
			var currTab = tt.tabs('getTab', title);
			tt.tabs('update', {
				tab : currTab,
				options : {
					content : content,
					closable : true
				}
			});
		} else {
			if (href) {
				var content = '<iframe frameborder="0" src="'
						+ href
						+ '" style="border:0;width:100%;height:99.5%;"></iframe>';
			} else {
				var content = '未实现';
			}
			tt.tabs('add', {
				title : title,
				content : content,
				closable : true,
				iconCls : icon
			});
		}
	}

	function logout() {
		$.messager.confirm('提示', '确定要退出?', function(r) {
			if (r) {
				progressLoad();
				$.post('${path }/logout', function(result) {
					if (result.success) {
						progressClose();
						window.location.href = '${path }';
					}
				}, 'json');
			}
		});
	}

	function editUserPwd() {
		parent.$.modalDialog({
			title : '修改密码',
			width : 300,
			height : 250,
			href : '${path }/user/editPwdPage',
			buttons : [ {
				text : '确定',
				handler : function() {
					var f = parent.$.modalDialog.handler
							.find('#editUserPwdForm');
					f.submit();
				}
			} ]
		});
	}
</script>
</head>
<body class="easyui-layout" style="overflow-y: hidden" scroll="no">
	<div id="loading"
		style="position: fixed; top: -50%; left: -50%; width: 200%; height: 200%; background: #fff; z-index: 100; overflow: hidden;">
		<img src="${staticPath }/static/style/images/ajax-loader.gif"
			style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; margin: auto;" />
	</div>
	<div id="index_layout">
		<div region="north" split="true" border="false"
			style="overflow: hidden; height: 70px; line-height: 70px; background: #fff; padding: 5px 10px 20px 30px; font-family: Verdana, 微软雅黑, 黑体">
			<span
				style="float: right; padding-right: 20px; margin-top: 5px; color: #333">
				欢迎 <b><shiro:principal></shiro:principal></b>&nbsp; <shiro:hasPermission
					name="/user/editPwdPage">
					<a href="javascript:void(0)" onclick="editUserPwd()"
						class="easyui-linkbutton" plain="true" icon="icon-edit">修改密码</a>
				</shiro:hasPermission><a href="javascript:void(0)" onclick="logout()"
				class="easyui-linkbutton" plain="true" icon="icon-clear">安全退出</a>
			</span> <span class="header">后台管理系统</span>
		</div>
		<div region="south" split="true"
			style="height: 30px; background: #D2E0F2;">
			<div class="footer">By Houxm, Copy Right @2017</div>
		</div>

		<div data-options="region:'west',split:true" title="导航菜单"
			style="width: 200px; overflow: hidden; overflow-y: auto; padding: 0px">
			<!-- <div class="easyui-accordion  i_accordion_menu" id="layout_west_tree" fit="true" border="false"></div> -->

			<div
				class="easyui-accordion  i_accordion_menu accordion accordion-noborder easyui-fluid"
				style="width: 153px; height: 457px;" border="false" fit="true"
				id="layout_west_tree"></div>

		</div>
		<div data-options="region:'center'" style="overflow: hidden;">
			<div id="index_tabs" style="overflow: hidden;">
				<div title="首页" data-options="border:false" fit="true"
					style="overflow-x: hidden;overflow-y:visible">
					<div style="width: 98%; padding: 10px;">
						<div style="width: 100%;">
							<div class="easyui-tabs"
								style="width: 48%; height: 100px; margin: 10px; float: left;">
								<div title="在网设备信息汇总情况" style="padding: 10px;">
									<div class="t-list">
										1.<a href="#">第一条信息</a>
									</div>
									<div class="t-list">
										2.<a href="#">第一条信息</a>
									</div>
									<div class="t-list">
										3.<a href="#">第一条信息</a>
									</div>
								</div>
								<div title="其他信息汇总" closable="true" style="padding: 10px;">
									<ul>
										<li>...</li>
										<li>...</li>
									</ul>
								</div>
							</div>
							<div class="easyui-tabs"
								style="width: 48%; height: 100px; margin: 10px; float: left;">
								<div title="待办任务列表" style="padding: 10px;">
									<ol>
										<li style="font-weight: bolder; margin-top: 3px;"><a
											href="#" style="font-size: 14px; line-height: 14px;">上午去超市买东西。</a></li>
										<li style="margin-top: 3px;"><a href="#"
											style="font-size: 14px; line-height: 14px;">周日去奥特莱斯逛街</a></li>
										<li style="font-weight: bolder; margin-top: 3px;"><a
											href="#" style="font-size: 14px; line-height: 14px;">上午去超市买东西。</a></li>
										<li style="margin-top: 3px;"><a href="#"
											style="font-size: 14px; line-height: 14px;">周日去奥特莱斯逛街</a></li>
									</ol>
								</div>
							</div>
						</div>
							<div class="easyui-tabs"
								style="width: 98%; height: 180px; margin: 10px;">
								<div title="非法操作预警" style="padding: 10px;">
									<table id="illegal" class="easyui-datagrid"
										style="width: 98%; height: auto;">
										<thead>
											<tr>
												<th field="name1" width="150">时间</th>
												<th field="name2" width="100">类型</th>
												<th field="name3" width="500">事件</th>
											</tr>
										</thead>
										<tbody>
											<tr style="font-weight: border;">
												<td>2017-04-08 22:04:13</td>
												<td>严重</td>
												<td>系统连接超时，导致服务宕机了！！！</td>
											</tr>
											<tr>
												<td>2017-04-08 22:04:13</td>
												<td>一般</td>
												<td>查询接口无法正常服务，请管理员尽快处理！</td>
											</tr>
											<tr>
												<td>2017-04-08 22:04:13</td>
												<td>一般</td>
												<td>查询接口无法正常服务，请管理员尽快处理！</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div title="非法操作预警2" closable="false" style="padding: 10px;">
									Second Tab</div>
							</div>
						<div style="width: 100%;">
							<div class="easyui-tabs"
								style="width: 98%; height: 180px; margin: 10px;">
								<div title="白名单查询" style="padding: 10px;">
									<table id="tt" class="easyui-datagrid"
										style="width: 400px; height: auto;">
										<thead>
											<tr>
												<th field="name1" width="50">Col 1</th>
												<th field="name2" width="50">Col 2</th>
												<th field="name3" width="50">Col 3</th>
												<th field="name4" width="50">Col 4</th>
												<th field="name5" width="50">Col 5</th>
												<th field="name6" width="50">Col 6</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Data 1</td>
												<td>Data 2</td>
												<td>Data 3</td>
												<td>Data 4</td>
												<td>Data 5</td>
												<td>Data 6</td>
											</tr>
											<tr>
												<td>Data 1</td>
												<td>Data 2</td>
												<td>Data 3</td>
												<td>Data 4</td>
												<td>Data 5</td>
												<td>Data 6</td>
											</tr>
											<tr>
												<td>Data 1</td>
												<td>Data 2</td>
												<td>Data 3</td>
												<td>Data 4</td>
												<td>Data 5</td>
												<td>Data 6</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--[if lte IE 7]>
    <div id="ie6-warning"><p>您正在使用 低版本浏览器，在本页面可能会导致部分功能无法使用。建议您升级到 <a href="http://www.microsoft.com/china/windows/internet-explorer/" target="_blank">Internet Explorer 8</a> 或以下浏览器：
    <a href="http://www.mozillaonline.com/" target="_blank">Firefox</a> / <a href="http://www.google.com/chrome/?hl=zh-CN" target="_blank">Chrome</a> / <a href="http://www.apple.com.cn/safari/" target="_blank">Safari</a> / <a href="http://www.operachina.com/" target="_blank">Opera</a></p></div>
    <![endif]-->
<!--[if IE 7]><style>.panel-body-noheader{border-bottom-width:1px;}</style><![endif]-->
	<style>
/*ie6提示*/
#ie6-warning {
	width: 100%;
	position: absolute;
	top: 0;
	left: 0;
	background: #fae692;
	padding: 5px 0;
	font-size: 12px
}

#ie6-warning p {
	width: 960px;
	margin: 0 auto;
}
</style>
</body>
</html>