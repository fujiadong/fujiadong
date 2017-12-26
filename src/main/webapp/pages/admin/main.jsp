<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath %>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>娃娃管理系统</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/resources/js/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/resources/js/easyui/themes/icon.css">
	<script type="text/javascript" src="<%=basePath %>/resources/js/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath %>/resources/js/easyui/jquery.easyui.min.js"></script>
</head>
<body class="easyui-layout">   
    <div data-options="region:'north',title:'North Title',split:true" style="height:100px;"></div>   
    <div data-options="region:'south',title:'South Title',split:true" style="height:100px;"></div>   
    <div data-options="region:'west',title:'导航栏',split:true,iconCls:'icon-world'" style="width:150px;">
    	<ul id="tt">
    	</ul>  
    </div>   
    <div data-options="region:'center',title:'center title',noheader:true" style="padding:5px;background:#eee;">
    	<div id="tab" class="easyui-tabs" style="width:500px;height:250px;" data-options="fit:true">   
		    <div title="首页" style="padding:20px;" data-options="iconCls:'icon-house'">   
		        <center style="font-size:48px;color:blue;font-weight:bold;line-height:250px;text-shadow:10px 10px 10px gray;">
		        	欢迎使用娃娃管理系统
		        </center>   
		    </div>   
		</div>  
    </div>  
    <script type="text/javascript">
    	//动态从数据库中获取导航栏菜单
	    $('#tt').tree({    
	        url:'<%=basePath %>/admin/getAdminNav.shtml',
	        onClick: function(node){
	        	// 添加一个未选中状态的选项卡面板
	        	if(node.href!=null){
		        	$('#tab').tabs('add',{
		        		title: node.text,
		        		iconCls:node.iconCls,
		        		closable:true,
		        		selected: true
		        		
		        	});
	        	}
	    	},
	    	lines:true
	    }); 
    </script> 
</body>  
</html>