<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript" src="/js/common.js"></script>
<table class="easyui-datagrid" id="newsList" title="过期新闻"
       data-options="singleSelect:false,collapsible:true,pagination:true,url:'/news/overdueList',method:'get',pageSize:10,toolbar:toolbar">
    <thead>
    <tr>
        <th data-options="field:'ck',checkbox:true"></th>
        <th data-options="field:'id',width:60">新闻ID</th>
        <th data-options="field:'title',width:200">新闻标题</th>
        <th data-options="field:'author',width:100">作者</th>

        <th data-options="field:'country',width:70">所属联赛</th>
        <th data-options="field:'summary',width:300">新闻摘要</th>
        <th data-options="field:'status',width:60,align:'center',formatter:TAOTAO.formatItemStatus">状态</th>
        <th data-options="field:'createTime',width:160,align:'center',formatter:TAOTAO.formatDateTime">创建日期</th>
    </tr>
    </thead>
</table>
<div id="itemEditWindow" class="easyui-window" title="编辑新闻" data-options="modal:true,closed:true,iconCls:'icon-save',href:'/rest/page/item-edit'" style="width:80%;height:80%;padding:10px;">
</div>
<script>

    function getSelectionsIds(){
        var itemList = $("#newsList");
        var sels = itemList.datagrid("getSelections");
        var ids = [];
        for(var i in sels){
            ids.push(sels[i].id);
        }
        ids = ids.join(",");
        return ids;
    }

    var toolbar = [{
        text:'新增',
        iconCls:'icon-add',
        handler:function(){
            $(".tree-title:contains('新增新闻')").parent().click();
        }
    },{
        text:'编辑',
        iconCls:'icon-edit',
        handler:function(){
            var ids = getSelectionsIds();
            alert(ids);
            if(ids.length == 0){
                $.messager.alert('提示','必须选择一条新闻才能编辑!');
                return ;
            }
            if(ids.indexOf(',') > 0){
                $.messager.alert('提示','只能选择一条新闻!');
                return ;
            }

            $("#itemEditWindow").window({
                onLoad :function(){
                    alert("ik");
                    //回显数据
                    var data = $("#newsList").datagrid("getSelections")[0];
                    alert(data);
                    data.priceView = TAOTAO.formatPrice(data.price);
                    alert(data.priceView);
                    $("#itemeEditForm").form("load",data);

                    // 加载商品描述
                    $.getJSON('/rest/item/query/item/desc/'+data.id,function(_data){
                        if(_data.status == 200){
                            //UM.getEditor('itemeEditDescEditor').setContent(_data.data.itemDesc, false);
                            itemEditEditor.html(_data.data.itemDesc);
                        }
                    });

                    //加载商品规格
//        			$.getJSON('/rest/item/param/item/query/'+data.id,function(_data){
//        				if(_data && _data.status == 200 && _data.data && _data.data.paramData){
//        					$("#itemeEditForm .params").show();
//        					$("#itemeEditForm [name=itemParams]").val(_data.data.paramData);
//        					$("#itemeEditForm [name=itemParamId]").val(_data.data.id);
//
//        					//回显商品规格
//        					 var paramData = JSON.parse(_data.data.paramData);
//
//        					 var html = "<ul>";
//        					 for(var i in paramData){
//        						 var pd = paramData[i];
//        						 html+="<li><table>";
//        						 html+="<tr><td colspan=\"2\" class=\"group\">"+pd.group+"</td></tr>";
//
//        						 for(var j in pd.params){
//        							 var ps = pd.params[j];
//        							 html+="<tr><td class=\"param\"><span>"+ps.k+"</span>: </td><td><input autocomplete=\"off\" type=\"text\" value='"+ps.v+"'/></td></tr>";
//        						 }
//
//        						 html+="</li></table>";
//        					 }
//        					 html+= "</ul>";
//        					 $("#itemeEditForm .params td").eq(1).html(html);
//        				}
//        			});

                    TAOTAO.init({
                        "pics" : data.image,
                        "cid" : data.cid,
//        				fun:function(node){
//        					TAOTAO.changeItemParam(node, "itemeEditForm");
//        				}
                    });
                }
            }).window("open");
        }
    },{
        text:'审核不通过',
        iconCls:'icon-cancel',
        handler:function(){
            var ids = getSelectionsIds();
            if(ids.length == 0){
                $.messager.alert('提示','未选中新闻!');
                return ;
            }
            $.messager.confirm('确认','确定不通过ID为 '+ids+' 的新闻吗？',function(r){
                if (r){
                    var params = {"ids":ids};
                    $.post("/news/reject",params, function(data){
                        if(data.status == 200){
                            $.messager.alert('提示','新闻审核未通过!',undefined,function(){
                                $("#newsList").datagrid("reload");
                            });
                        }
                    });
                }
            });
        }
    },'-',{
        text:'下架',
        iconCls:'icon-remove',
        handler:function(){
            var ids = getSelectionsIds();
            if(ids.length == 0){
                $.messager.alert('提示','未选中新闻!');
                return ;
            }
            $.messager.confirm('确认','确定下架ID为 '+ids+' 的新闻吗？',function(r){
                if (r){
                    var params = {"ids":ids};
                    $.post("/news/overdue",params, function(data){
                        if(data.status == 200){
                            $.messager.alert('提示','下架新闻成功!',undefined,function(){
                                $("#newsList").datagrid("reload");
                            });
                        }
                    });
                }
            });
        }
    },{
        text:'审核通过',
        iconCls:'icon-remove',
        handler:function(){
            var ids = getSelectionsIds();
            if(ids.length == 0){
                $.messager.alert('提示','未选中新闻!');
                return ;
            }
            $.messager.confirm('确认','确定上架ID为 '+ids+' 的新闻吗？',function(r){
                if (r){
                    var params = {"ids":ids};
                    $.post("/news/pass",params, function(data){
                        if(data.status == 200){
                            $.messager.alert('提示','上架商品成功!',undefined,function(){
                                $("#newsList").datagrid("reload");
                            });
                        }
                    });
                }
            });
        }
    }];
</script>