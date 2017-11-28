<!DOCTYPE html>
<!-- saved from url=(0045)https://www.dongqiudi.com/archive/464484.html -->
<html><head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script src="/js/ca-pub-2740956561998702.js"></script>
            
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="baidu_union_verify" content="e375dfea1f5937c9114d7fea78c91675">
        <meta name="keywords" content="懂球帝|足球新闻|足球App|足球资讯|足球直播|足球视频|足球比分|中国足球">
                    <title>亚冠资格赛分区：中国四号种子可能碰布里斯班狮吼 — 上海绿地申花|上海上港|天津权健|河北华夏幸福|懂球帝</title>
        <script src="/js/hm.js"></script><script async="" src="/js/sensorsdata.min.js"></script><script src="/js/push.js"></script><script src="/js/jQuery.1.11.min.js"></script>
    	<link rel="shortcut icon" href="http://static1.dongqiudi.com/web-new/web/images/fav.ico?20170706" type="image/x-icon">
        <link rel="stylesheet" href="/css/style.css">
        <link rel="stylesheet" href="/css/jPaginate.css">
        <script src="/js/common.js" type="text/javascript"></script>
                
<%--<script src="/js/share.js"></script><link rel="preload" href="/js/integrator.js" as="script"><script type="text/javascript" src="/js/integrator.js"></script><link rel="stylesheet" href="/css/share_style0_24.css"></head>--%>
<body>
<script src="/js/baidu_zz_auto_push.js"></script>

<div id="header">
    <div class="header_main">
        <div class="header_left">
                            <a href="https://www.dongqiudi.com/" class="logo"><img src="/images/logo.png" style="width:120px;padding-top:5px;" alt=""></a>
                        <a href="https://www.dongqiudi.com/" class="nav nav_hover" sensors-name="home">首页</a>
                            <a href="https://www.dongqiudi.com/match" class="nav" sensors-name="match">比赛</a>
                <a href="https://www.dongqiudi.com/video" class="nav" sensors-name="video">视频</a>
                <a href="https://www.dongqiudi.com/data" class="nav" sensors-name="data">数据</a>
                <a href="https://www.dongqiudi.com/app" class="nav" sensors-name="app">APP</a>
                <a href="http://hao.dongqiudi.com/home" target="_blank" class="nav" sensors-name="dqh">懂球号</a>
            
        </div>
        <div class="header_right">
            <c:if test="${USER_SESSION==null}">
                <a href="#" class="login">登录</a>
            </c:if>
            <c:if test="${USER_SESSION!=null}">
                <img src="http://localhost:8080/upload/804.png" style="width: 30px">
                ${USER_SESSION.username}
                <a href="#" class="login">退出</a>
            </c:if>
        </div>
    </div>
</div>

<div id="main" class="cf">

        <div class="thumb">
        <a href="https://www.dongqiudi.com/">懂球帝首页</a> &gt; <span>
                            新闻正文
                    </span>
    </div>
    <div id="con" class="cf">
        <div class="left">
            <div class="detail">
                <h1>${NEWS_DETAIL.title}</h1>
                <h4>
                                            <span class="name">${NEWS_DETAIL.author}</span>
                                        <span class="time"><span class="time"><fmt:formatDate value="${NEWS_DETAIL.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                    <a class="comm" href="#">评论</a>
                                        </span>
                </h4>
                                            <div><p>${NEWS_DETAIL.summary}</p>
                                                <p><img src="${NEWS_DETAIL.picture}" data-width="176" data-height="117"></p>
                                                <p>${NEWS_DETAIL.content}</p>
                                            </div>
                                    <ul class="sourse">
                                                              <li>严禁商业机构或公司转载，违者必究；球迷转载请注明来源“懂球帝”</li>
                      <li style="display:none;"><a target="_blank" href="https://www.dongqiudi.com/archive/53745.html"><span>懂球帝社区规范：抵制辱骂</span></a></li>
                    
                </ul>
                <div id="share">
                    <div class="bdsharebuttonbox bdshare-button-style0-24" style="display:inline-block; vertical-align:middle" data-bd-bind="1510915862719">

                    </div>

                </div>

            </div>
            <div id="comment">
                <h2>我要评论</h2>
                                    <textarea placeholder=${USER_SESSION==null?"'登录即可参与讨论！' onclick='maskShow('unlogin')'":"'说点什么！' id='conBox'"} ></textarea>
                                <div class="info cf">
                                    <c:if test="${USER_SESSION==null}">
                                        <a href="javascript:void(0);" onclick="maskShow('unlogin')" class="btn btn_disable">提交评论</a>
                                    </c:if>
                                    <c:if test="${USER_SESSION!=null}">
                                        <a href="javascript:void(0)" onclick="comment()" class="btn">提交评论</a>
                                    </c:if>
                                </div>
                                    <div class="comFrame">
                        <h3>精彩评论（16）</h3>
                        <ol id="top_comment">
                            <c:forEach var="hotComment" items="${COMMENT_HOT_LIST}">
                                <li>
                                    <img src="${hotComment.user.avatar}" class="head" alt="">
                                    <p class="nameCon">
                                        <span class="name">${hotComment.user.username}</span>
                                        <span class="time">2017-11-27</span>
                                    </p>
                                    <p class="comCon">
                                        ${hotComment.content}
                                    </p>
                                    <div class="image-view text-center">
                                    </div>
                                    <p></p>
                                    <div class="ctr" rel="67869028" id="com_67869028" res="申花神话精神永存">
                                        <a href="#" class="report">举报</a>
                                        <a href="#" class="recom">回复</a>
                                        <c:if test="${USER_SESSION==null}">
                                            <a href="javascript:void(0);" onclick="maskShow('unlogin')" class="zan">赞（${hotComment.likes}）</a>
                                        </c:if>
                                        <c:if test="${USER_SESSION!=null}">
                                            <a href="javascript:void(0)" onclick="zan(this,'${hotComment.id}')" class="zan">赞（${hotComment.likes}）</a>
                                        </c:if>
                                    </div>
                                </li>
                            </c:forEach>
                        </ol>
                    </div>
                                <div id="pjax-container">
    <div class="comFrame" style="position: relative">
        <div id="comment_anchor" style="position:absolute; top:-55px; z-index:0;"></div>
        <h3 id="comment_total_num"></h3>
        <ol id="all_comment">

        </ol>
        <div id="pageDiv" align="center" style="font-size: 20px">

        </div>
<script type="text/javascript">

</script>
    </div>
    <%--<a id="page"></a>
    <ul class="pagination">
        <a id="page">
            <li class="disabled">
                <span>«</span>
            </li>
            <li class="active">
                <span>1</span>
            </li>
        </a>
            <li>
                <a id="page"></a>
                <a href="http://www.dongqiudi.com/archive/464484.html?page=2#comment_anchor">2</a>
            </li>
            <li>
                <a href="http://www.dongqiudi.com/archive/464484.html?page=3#comment_anchor">3</a>
            </li><li><a href="http://www.dongqiudi.com/archive/464484.html?page=4#comment_anchor">4</a></li><li><a href="http://www.dongqiudi.com/archive/464484.html?page=5#comment_anchor">5</a></li><li><a href="http://www.dongqiudi.com/archive/464484.html?page=6#comment_anchor">6</a></li><li><a href="http://www.dongqiudi.com/archive/464484.html?page=7#comment_anchor">7</a></li><li><a href="http://www.dongqiudi.com/archive/464484.html?page=8#comment_anchor">8</a></li><li class="disabled"><span>...</span></li><li><a href="http://www.dongqiudi.com/archive/464484.html?page=52#comment_anchor">52</a></li><li><a href="http://www.dongqiudi.com/archive/464484.html?page=53#comment_anchor">53</a></li> <li><a href="http://www.dongqiudi.com/archive/464484.html?page=2#comment_anchor" rel="next">»</a></li></ul>
--%></div>
            </div>

        </div>
                <div class="right">
                <div id="#" class="conFrame">
                    <div class="title cf">
                        <span>相关标签</span>
                    </div>
                    <div class="lists">
                        <c:forEach var="relatedLabel" items="${LABEL_RELATED_LIST}">
                            <a href="#" target="_blank"></a>
                            <img style="width: 40px;height: 52px; vertical-align: middle" src="${relatedLabel.images}" />
                            <span style="font-size: 16px;">
                                ${relatedLabel.name}
                            </span>
                            <p style="margin-top: -20px;margin-left:5px;font-size: 16px">
                                <span style="margin-left: 50px" class="time">${relatedLabel.englishName}</span>
                            </p>
                        </c:forEach>
                    </div>
                </div>
        </div>
                <div class="right">
                            <div id="news_s_list" class="conFrame">
                    <div class="title cf">
                        <span>相关新闻</span>
                    </div>
                    <ol>
                        <c:forEach var="relatedNews" items="${NEWS_RELATED_LIST}">
                            <h3><a href="news_detail.jsp?id=${relatedNews.id}" target="_blank">${relatedNews.title}</a></h3>
                            <li>
                                <p>
                                    <span class="time"><fmt:formatDate value="${relatedNews.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                                </p>
                            </li>
                        </c:forEach>
                    </ol>
                </div>
                        <div>
                <!-- Google AdSense Start -->
                <%--<script async="" src="/js/adsbygoogle.js"></script>--%>
                <!-- PC文章相关新闻下侧广告 -->
                <%--<ins class="adsbygoogle" style="display: block; height: 600px;" data-ad-client="ca-pub-2740956561998702" data-ad-slot="3508989159" data-ad-format="auto" data-adsbygoogle-status="done"><ins id="aswift_0_expand" style="display:inline-table;border:none;height:600px;margin:0;padding:0;position:relative;visibility:visible;width:280px;background-color:transparent;"><ins id="aswift_0_anchor" style="display:block;border:none;height:600px;margin:0;padding:0;position:relative;visibility:visible;width:280px;background-color:transparent;"><iframe width="280" height="600" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}" id="aswift_0" name="aswift_0" style="left:0;position:absolute;top:0;width:280px;height:600px;" src="/js/saved_resource.html"></iframe></ins></ins></ins>--%>
                <%--<script>
                    (adsbygoogle = window.adsbygoogle || []).push({});
                </script>--%>
                <!-- Google AdSense End -->
            </div>
        </div>
    </div>


</div>

<div id="footer">
    <div class="footer_main">
        <dl class="list_1">
                            <dt>懂球帝 | All Football App</dt>
                <dd><a href="https://www.dongqiudi.com/archive/5855.html">关于懂球帝</a></dd>
                <dd><a href="http://hr.dongqiudi.com/" target="_blank">加入我们</a></dd>
                <dd><a href="https://www.dongqiudi.com/app">客户端下载</a></dd>
                <dd><a href="https://www.dongqiudi.com/complain">侵权投诉</a></dd>
                <dd><a href="https://www.dongqiudi.com/archive/197534.html">广告投放</a></dd>
                <dd>联系方式：010-82800288</dd>
                    </dl>
        <dl class="list_2">
                            <dt>关注</dt>
                <dd><a href="http://weibo.com/ballpure" target="_balnk">官方微博</a></dd>
                <dd><a href="https://www.dongqiudi.net/" target="_blank">小游戏</a></dd>
                    </dl>
        <dl class="list_4">
                            <dt>友情链接</dt>
                <dd><a href="http://all.football/" target="_balnk">ALL FOOTBALL</a></dd>
                <dd><a href="http://m.kuaidi100.com/" target="_balnk">快递查询</a></dd>
                <dd><a href="https://www.hupu.com/" target="_balnk">虎扑网</a></dd>
                <dd><a href="http://www.letterfan.com/" target="_balnk">信虫地带</a></dd>
                <dd><a href="http://live.qq.com/" target="_balnk">企鹅直播</a></dd>
                    </dl>
        <dl class="list_3">
                            <dd>京ICP证 150469号</dd>
                <dd>京ICP备 14042073号-3</dd>
                <dd><a target="_blank" href="#" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img src="/images/beian.png" style="float:left;"><p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">京公网安备 11010802020789号</p></a></dd>
                <dd><a target="_blank" href="#">食品经营许可证</a> </dd>
                                <dd>北京多格科技有限公司</dd>
                    </dl>
    </div>
</div>
<div id="mask">
    <div id="pop">
        <a href="#" class="close"></a>
            <h3><span class="icon_sad"></span> 非常抱歉！</h3>
            <p></p>
            <a href="#" class="btn"></a>
    </div>
</div>
<div id="blink">
    <div id="popUp">
     <p></p>
    </div>
</div>
<div id="ctr">
    <div class="code"></div>
    <span class="icon_qr"></span>
    <a href="#" class="b_t"></a>
</div>
<script src="/js/common.js"></script>

<%--<script src="/js/sensors.js"></script>
<script src="/js/pc_statistics.js"></script>
    &lt;%&ndash;<script type="text/javascript" src="/js/464484"></script>&ndash;%&gt;
    <script type="text/javascript" src="/js/jquery.pjax.js"></script>
    <script type="text/javascript" src="/js/jsrender.min.js"></script>
    <script type="text/javascript" src="/js/main.js"></script>
    <script type="text/javascript" src="/js/vote.js"></script>--%>

<script type="text/javascript">

    getPage(1);

    function getPage(page) {

        if (page==null) {
            page=1;
        }

        $.ajax({
            url:"/comment/list?newsId=${NEWS_DETAIL.id}&page=" + page,
            method:"post",
            success:function (data) {
                $("#all_comment").empty();
                $("#comment_total_num").html("全部评论（" + data.comment_total_num + "）");

                for(var i=0;i<data.data.length;i++){

                    var li = $("<li></li>");
                    $("#all_comment").append(li);
                    var img = $("<img/>").attr("src",data.data[i].user.avatar).attr("class","head");
                    li.append(img);
                    var p1 = $("<p></p>").attr("class","nameCon");
                    li.append(p1);
                    var span1 = $("<span></span>").attr("class", "name");
                    span1.html(data.data[i].user.username);
                    var span2 = $("<span></span>").attr("class", "time");
                    span2.html("2017-11-17 18:49:31");
                    p1.append(span1,span2);
                    var p2 = $("<p></p>").attr("class", "comCon");
                    p2.html(data.data[i].content);
                    li.append(p2);
                    var div1 = $("<div></div>").attr("class", "image-view text-center");
                    li.append(div1);
                    var p3 = $("<p></p>");
                    li.append(p3);
                    var div2 = $("<div></div>").attr("class", "ctr");
                    var a1 = $("<a></a>").attr("class", "report").html("举报");
                    var a2 = $("<a></a>").attr("class", "recom").html("回复");

                    <c:if test="${USER_SESSION==null}">
                        var a3=$("<a></a>").attr("class","zan").attr("href","javascript:void(0)").attr("onclick","maskShow('unlogin')");
                        a3.html("赞（"+data.data[i].likes+"）");
                    </c:if>
                    <c:if test="${USER_SESSION!=null}">
                        var a3=$("<a></a>").attr("class","zan").attr("href","javascript:void(0)").attr("onclick","zan(this,"+data.data[i].id+")");
                        a3.html("赞（"+data.data[i].likes+"）");
                    </c:if>
                    div2.append(a1, a2, a3);
                    li.append(div2);
                }

                $("#pageDiv").empty();
                if (data.news_detail_page.hasPreviousPage){
                    var a1 = $("<a></a>").attr("href", "javascript:void(0)");
                    a1.attr("onclick", "getPage(" + data.news_detail_page.prePage + ")").html("«");
                    $("#pageDiv").append(a1);
                }

                for (var i=1;i<=data.news_detail_page.pages;i++) {
                    var a = $("<a></a>").attr("href", "javascript:void(0)");
                    a.attr("onclick", "getPage(" + i + ")").html(i);
                    $("#pageDiv").append(a);
                }
                if (data.news_detail_page.hasNextPage){
                    var a2 = $("<a></a>").attr("href", "javascript:void(0)");
                    a2.attr("onclick", "getPage(" + data.news_detail_page.nextPage + ")").html("»");
                    $("#pageDiv").append(a2);
                }
            }
        })
    }

    var comment = function () {

        $.ajax({
            type: "post",
            url: "/comment/add?content="+$("#conBox").val()+"&userId=${USER_SESSION.id}&newsId=${NEWS_DETAIL.id}",
            success: function (data) {
                if (data.errCode) {
                    if (data.errCode == 401) {
                        maskShow('未登录');
                        return;
                    }
                    maskShow(data.errMsg);
                    return;
                }
                $('#conBox').val('');
                blinkShow("评论成功");
                $('#all_comment').empty();
                getPage(1);
            },
            error: function (data) {
                if (data.status == 401) {
                    maskShow('未登录');
                }
                /*else if (data.responseJSON) {
                    msg = data.responseJSON.errMsg;
                    if (data.responseJSON.errCode == 40008) {
                        msg = '您当前处于封禁状态，不能发言';
                    }

                    maskShow(msg);
                }*/
                else {
                    mastShow('评论失败');
                }
            }
        });
    }

    function zan(t,id){

        $.ajax({
            url:"/comment/recomment?id="+id,
            method:"post",
            success:function (data) {
                t.innerHTML="赞（" + data.zanNum + "）";
                t.onclick = "";
            }
        })
    }

</script>

    <script type="text/javascript">

        /*var to_user_str = null;
        var to_user_id = 0;

        var destory = function (id) {
            $.ajax({
                type: "get",
                url: '/comment/destory/' + id,
                success: function (data) {
                    if (data.errCode) {
                        blinkShow(data.errMsg);
                        return;
                    }

                    blinkShow('删除成功');
                    $('#com_' + id).closest('li').remove();
                },
                error: function (data) {
                    if (data.status == 401) {
                        maskShow("登录之后才可以举报哦~");
                        return;
                    }
                }
            });
        }


        var report = function (id) {
            $.ajax({
                type: "get",
                url: '/comment/report/' + id,
                success: function (data) {
                    if (data.errCode) {
                        blinkShow(data.errMsg);
                        return;
                    }

                    blinkShow('举报成功');
                },
                error: function (data) {
                    if (data.status == 401) {
                        maskShow("登录之后才可以举报哦~");
                        return;
                    }
                }
            });
        }


        var up = function (id) {
            $.ajax({
                type: "get",
                url: '/comment/up/' + id,
                success: function (data) {
                    if (data.errCode) {
                        blinkShow(data.errMsg);
                        return;
                    }
                    blinkShow("赞 +1");
                    var name = "[name=up_" + data.id + "]";
                    $(name).html("赞（" + data.up + "）");
                },
                error: function (data) {
                    if (data.status == 401) {
                        maskShow("unlogin");
                        return;
                    }
                }
            });

        }*/





        /*var setCommentInfo = function (comment_id, user_name) {
            to_user_str = '回复@' + user_name + '的评论:';
            to_user_id = comment_id;
            $('#conBox').focus().val(to_user_str);
        }*/


        /*String.prototype.startWith = function (str) {
            var reg = new RegExp("^" + str);
            return reg.test(this);
        }*/


        /*var scroll_locked = false;
        var scroll_times = 1;
        var article_id = 464484;*/

        /*$(function () {


            $(document).scroll(function () {
                window.setTimeout(function () {

                    if (scroll_times < 3 && !scroll_locked) {
                        var allHeight = document.body.scrollHeight;
                        var sHeight = document.documentElement.scrollTop || document.body.scrollTop;
                        var winHeight = document.documentElement.clientHeight;
                        var margin = allHeight - sHeight - winHeight;



                        if (margin < 1000) {
                            scroll_locked = true;
                            var page = 1;
                            if (request('page')) {
                                page = parseInt(request('page'));
                            }
                            page = page + scroll_times;
                            scroll_times = scroll_times + 1;

                            /!*loadPage(page);*!/

                        }
                    }
                }, 100)
            });
            $('#comment').delegate('a.recom', 'click', function () {
                var comment_id = $(this).closest('.ctr').attr('rel');
                var user_name = $(this).closest('.ctr').attr('res');
                var logined = $('#loginStat').val();
                if (logined) {
                    setCommentInfo(comment_id, user_name)
                } else {
                    maskShow('unlogin');
                    return false;
                }
            });
            $('#comment').delegate('a.report', 'click', function () {
                var comment_id = $(this).closest('.ctr').attr('rel');
                var logined = $('#loginStat').val();
                if (logined) {
                    report(comment_id)
                } else {
                    maskShow('unlogin');

                }
                return false;
            });
            $('#comment').delegate('a.zan', 'click', function () {
                var comment_id = $(this).closest('.ctr').attr('rel');
                var logined = $('#loginStat').val();
                if (logined) {
                    up(comment_id)
                } else {
                    maskShow('unlogin');
                }
                return false;
            });
            $('#comment').delegate('a.destory', 'click', function () {
                var comment_id = $(this).closest('.ctr').attr('rel');
                var logined = $('#loginStat').val();
                if (logined) {
                    destory(comment_id)
                } else {
                    maskShow('unlogin');
                }
                return false;
            });
            $('.detail a').each(function (index) {
                url = $(this).attr('href');
                if (url.match(/dongqiudi:\/\//i)) {
                    url = url.replace('dongqiudi:///', 'http://www.dongqiudi.com/');
                    url = url.replace('dongqiudi://', 'http://');
                    url = url.replace('www.dongqiudi.com/news', 'www.dongqiudi.com/article')
                    $(this).attr('href', url);
                    $(this).attr('target', '_blank');
                }
            });

            $(document).pjax('.pagination a', '#pjax-container', {scrollTo: false});

            $(document).on('pjax:end', function () {
                scroll_locked = false;
                scroll_times = 1;
                $('.loading').css({visibility: 'hidden'});
            });

           checkVote();

        })*/

    </script>


<%--<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?662abe3e1ab2558f09503989c9076934";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>--%>


</body>
</html>