<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp"%>

<title>台帐关联信息查询</title>
<script type="text/javascript">
	/**通过异步加载将页面加载**/
	var cpuDataGrid;
	var diskDataGrid;
	var processDataGrid;
	var historyDataGrid;
	$(function() {
		var id = $('#id').val();
		//alert(id);
		var mac = $('#mac').val();
		var devno = $('#devno').val();
		var url = $('#url').val();
		//通过异步请求将数据加载到div中
		$.post("${path }" + url, {
			id : id
		}, function(data) {
			$("#detail").html(data);

		});
		historyDataGrid = $('#historyDataGrid').datagrid({
			url : '${path }/serverManage/historyDataGrid',
			queryParams : {
				id : id,
				devno : devno
			},
			fit : true,
			striped : true,
			rownumbers : false,
			pagination : true,
			singleSelect : true,
			idField : 'id',
			pageSize : 10,
			pageList : [ 10, 20, 30, 50 ],
			frozenColumns : [ [ {
				field : 'change_person',
				title : '申请人',
				width : 80
			}, {
				field : 'change_no',
				title : '申请单号',
				width : 100
			}, {
				width : '80',
				title : '业务类型',
				field : 'bus_type'

			}, {
				width : '120',
				title : '变更时间',
				field : 'updatetime'

			}, {
				field : 'marcher',
				title : '责任人',
				width : 80
			}] ],
			columns : [ [ {
				field : 'respondepart',
				title : '责任部门',
				width : 80
			},{
				width : '80',
				title : '设备编号',
				field : 'devno'

			},  {
				field : 'model',
				title : '型号',
				width : 80
			}, {
				width : '80',
				title : '序号',
				field : 'serialno'
			}, {
				width : '140',
				title : '新信息设备准用证编号',
				field : 'newcertifno',
				sortable : true
			}, {
				width : '140',
				title : '统一信息设备准用证编号',
				field : 'unicertifno'
			},
			{
				width : '80',
				title : '配置',
				field : 'equipment'
			}, {
				width : '80',
				title : '硬盘ID',
				field : 'diskno'

			}, {
				width : '80',
				title : '系统版本',
				field : 'osversion'

			}, {
				width : '120',
				title : '使用日期',
				field : 'usedate'

			}, {
				width : '80',
				title : '设备密级',
				field : 'secequipment'

			}, {
				width : '120',
				title : 'MAC地址',
				field : 'mac'

			}, {
				width : '120',
				title : 'IP地址',
				field : 'ipaddress'

			}, {
				width : '80',
				title : '所在房间',
				field : 'roomaddress'

			}, {
				width : '80',
				title : '使用状态',
				field : 'usestatus'

			}, {
				width : '120',
				title : '主要用途',
				field : 'mainuse'

			}, {
				width : '80',
				title : '接入信息点',
				field : 'accesspoint'
			}, {
				width : '60',
				title : '设备类型',
				field : 'devtype'
			}, {
				width : '120',
				title : '备注',
				field : 'remark'
			}, {
				width : '140',
				title : '状态',
				field : 'status',
				formatter : function(value, row, index) {
					//alert(value);
					value = parseInt(value);
					switch (value) {
					case 0:
						return '已更新';
					case 1:
						return '待更新';
					case 2:
						return '历史数据';
					default:
						return '历史数据';
					}
				}
			} ] ],
			onLoadSuccess : function(data) {
			},
			toolbar : '#toolbar'
		});

		cpuDataGrid = $('#cpuDataGrid').datagrid({
			url : '${path }/combination/cpuDataGrid',
			queryParams : {
				id : id,
				mac : mac
			},
			fit : true,
			striped : true,
			rownumbers : false,
			pagination : true,
			singleSelect : true,
			pageSize : 20,
			pageList : [ 10, 20, 30, 50 ],
			columns : [ [ {
				width : '50',
				title : 'cpu编号',
				field : 'cpuNo'

			}, {
				width : '100',
				title : 'CPU的总量MHz',
				field : 'cpuMhz'
			}, {
				width : '100',
				title : 'CPU的供应商',
				field : 'cpuVendor'
			}, {
				width : '100',
				title : 'CPU的类别',
				field : 'cpuModel'
			}, {
				width : '60',
				title : 'cpu内核数',
				field : 'cpuTotalCores'
			}, {
				width : '100',
				title : 'CPU用户使用率',
				field : 'cpuUser'
			}, {
				width : '100',
				title : 'CPU系统使用率',
				field : 'cpuSys'
			}, {
				width : '100',
				title : 'CPU当前等待率',
				field : 'cpuWait',
			}, {
				width : '100',
				title : 'CPU当前空闲率',
				field : 'cpuIdle'

			}, {
				width : '100',
				title : 'CPU总的使用率',
				field : 'cpuTotal'

			} ] ],
			onLoadSuccess : function(data) {
			},
			toolbar : '#toolbar'
		});

		diskDataGrid = $('#diskDataGrid').datagrid({
			url : '${path }/combination/diskDataGrid',
			queryParams : {
				id : id,
				mac : mac
			},
			fit : true,
			striped : true,
			rownumbers : false,
			pagination : true,
			singleSelect : true,
			pageSize : 20,
			pageList : [ 10, 20, 30, 50 ],
			columns : [ [ {
				width : '50',
				title : '设备编号',
				field : 'devNo'

			}, {
				width : '100',
				title : '盘符名称',
				field : 'devName'
			}, {
				width : '100',
				title : '盘符路径',
				field : 'dirName'
			}, {
				width : '100',
				title : '盘符类型',
				field : 'sysTypeName'
			}, {
				width : '120',
				title : '文件系统总大小(MB)',
				field : 'total'
			}, {
				width : '120',
				title : '文件系统剩余大小(MB)',
				field : 'free'
			}, {
				width : '120',
				title : '文件系统可用大小(MB)',
				field : 'avail'
			}, {
				width : '120',
				title : '文件系统已经使用量(MB)',
				field : 'used',
			}, {
				width : '100',
				title : '文件系统资源的利用率(%)',
				field : 'usePercent'

			}, {
				width : '100',
				title : '磁盘读出速度(kb)',
				field : 'diskReads'

			}, {
				width : '100',
				title : '磁盘写入速度(kb)',
				field : 'diskWrites'

			} ] ],
			onLoadSuccess : function(data) {
			},
			toolbar : '#toolbar'
		});

		processDataGrid = $('#processDataGrid').datagrid({
			url : '${path }/combination/processDataGrid',
			queryParams : {
				id : id,
				mac : mac
			},
			fit : true,
			striped : true,
			rownumbers : false,
			pagination : true,
			singleSelect : true,
			pageSize : 20,
			pageList : [ 10, 20, 30, 50 ],
			columns : [ [ {
				width : '60',
				title : '进程ID',
				field : 'processId'
			}, {
				width : '100',
				title : '进程创建者',
				field : 'creationClassName'

			}, {
				width : '100',
				title : '用户名',
				field : 'cSName'
			}, {
				width : '180',
				title : '运行的应用所在的路径',
				field : 'executablePath'
			}, {
				width : '100',
				title : '应用名称',
				field : 'name'
			}, {
				width : '140',
				title : '操作系统版本',
				field : 'oSName'
			}, {
				width : '60',
				title : '线程数',
				field : 'threadCount'
			}, {
				width : '120',
				title : '虚拟内存(KB)',
				field : 'virtualSize',
			}, {
				width : '100',
				title : '操作系统版本',
				field : 'windowsVersion'

			}, {
				width : '100',
				title : '工作集大小(KB)',
				field : 'workingSetSize'

			} ] ],
			onLoadSuccess : function(data) {
			},
			toolbar : '#toolbar'
		});
	});
</script>


<div style="display: none">
	<input id="id" value="${serverInfo.id}"></input> 
	<input id="mac" value="${serverInfo.mac}"></input> 
	<input id="devno" value="${serverInfo.devno}"></input>
	<input id="url" value="${serverInfo.param_url}"></input>
</div>

<div class="easyui-tabs" style="width: 100%; height: 400px">
	<div title="详情" style="padding: 10px" id="detail"></div>
	<div title="历史信息" style="padding: 10px" id="history">
		<div data-options="region:'center',border:true,title:'历史信息详情'" style="width: 100%; height: 350px">
			<table id="historyDataGrid" class="easyui-datagrid" data-options="fit:true,border:false"></table>
		</div>
	</div>
	<div title="DISK" style="padding: 10px" id="disk">
		<div data-options="region:'center',border:true,title:'硬盘信息详情'" style="width: 100%; height: 350px">
			<table id="diskDataGrid" class="easyui-datagrid" data-options="fit:true,border:false"></table>
		</div>
	</div>
	<div title="CPU" style="padding: 10px;" id="cpu">
		<div data-options="region:'center',border:true,title:'CPU信息详情'" style="width: 100%; height: 350px">
			<table class="easyui-datagrid" id="cpuDataGrid" data-options="fit:true,border:false"></table>
		</div>
	</div>
	<div title="进程" style="padding: 10px" id="process">
		<div data-options="region:'center',border:true,title:'进程信息详情'" style="width: 100%; height: 350px">
			<table class="easyui-datagrid" id="processDataGrid" data-options="fit:true,border:false"></table>
		</div>
	</div>

</div>
