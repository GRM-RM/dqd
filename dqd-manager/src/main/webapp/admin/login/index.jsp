<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DQD后台管理系统</title>
<link rel="stylesheet" type="text/css" href="/js/jquery-easyui-1.5/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="/js/jquery-easyui-1.5/themes/icon.css" />
<link rel="stylesheet" type="text/css" href="/css/taotao.css" />
<script type="text/javascript" src="/js/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="/js/common.js"></script>
<style type="text/css">
	.content {
		padding: 10px 10px 10px 10px;
	}
</style>
</head>
<body class="easyui-layout">
	<div data-options="region:'north'" style="height:70px;text-align:center">
		<h1>DQD后台管理系统</h1>
    </div>   
    <div data-options="region:'south'" style="height:50px;text-align:center">
    	共享版本V1.0
    </div> 
    <div data-options="region:'west',title:'菜单',split:true" style="width:180px;">
    	<ul id="menu" class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
         	<li>
         		<span>新闻管理</span>
         		<ul>
	         		<li data-options="attributes:{'url':'failList'}">未审核的新闻</li>
	         		<li data-options="attributes:{'url':'passList'}">审核通过的新闻</li>
					<li data-options="attributes:{'url':'rejectList'}">审核未通过的新闻</li>
					<li data-options="attributes:{'url':'overdueList'}">过期的新闻</li>
	         		<%--<li data-options="attributes:{'url':'item-param-list'}">规格参数</li>--%>
	         	</ul>
         	</li>
         	<li>
         		<span>球队管理</span>
         		<ul>
	         		<li data-options="attributes:{'url':'clubAdd'}">球队添加</li>
					<li>
						<span>球队查看</span>
						<ul>
							<li data-options="attributes:{'url':'CSLList'}">中超球队</li>
							<li data-options="attributes:{'url':'LALList'}">西甲球队</li>
							<li data-options="attributes:{'url':'PLLList'}">英超球队</li>
							<li data-options="attributes:{'url':'BDLList'}">德甲球队</li>
							<li data-options="attributes:{'url':'SAList'}">意甲球队</li>
							<li data-options="attributes:{'url':'L1List'}">法甲球队</li>
						</ul>
					</li>
	         	</ul>
         	</li>

			<li>
				<span>球员管理</span>
				<ul>
					<li data-options="attributes:{'url':'playerAdd'}">球员添加</li>
					<li>
						<span>球员查看</span>
						<ul>
							<li data-options="attributes:{'url':'CSLPlayerList'}">中超球员</li>
							<li data-options="attributes:{'url':'LALPlayerList'}">西甲球员</li>
							<li data-options="attributes:{'url':'PLLPlayerList'}">英超球员</li>
							<li data-options="attributes:{'url':'BDLPlayerList'}">德甲球员</li>
							<li data-options="attributes:{'url':'SAPlayerList'}">意甲球员</li>
							<li data-options="attributes:{'url':'L1PlayerList'}">法甲球员</li>
						</ul>
					</li>
				</ul>
			</li>

			<li>
				<span>比赛日程</span>
				<ul>
					<li data-options="attributes:{'url':'matchAdd'}">添加比赛日程</li>
					<li data-options="attributes:{'url':'matchList'}">查看比赛日程</li>
				</ul>
			</li>

			<li>
				<span>新闻评论</span>
				<ul>
					<li data-options="attributes:{'url':'commentList'}">查看所有评论</li>
				</ul>
			</li>

         </ul>
    </div>
    <div data-options="region:'center',title:''">
    	<div id="tabs" class="easyui-tabs">
		    <div title="首页" style="padding:20px;">
		        	
		    </div>
		</div>
    </div>
    
<script type="text/javascript">
$(function(){
	$('#menu').tree({
		onClick: function(node){
			if($('#menu').tree("isLeaf",node.target)){
				var tabs = $("#tabs");
				var tab = tabs.tabs("getTab",node.text);
				if(tab){
					tabs.tabs("select",node.text);
				}else{
					tabs.tabs('add',{
					    title:node.text,
					    href: node.attributes.url,
					    closable:true,
					    bodyCls:"content"
					});
				}
			}
		}
	});
});
</script>
</body>
</html>