<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="baidu_union_verify" content="e375dfea1f5937c9114d7fea78c91675">
    <meta name="keywords" content="懂球帝|足球新闻|足球App|足球资讯|足球直播|足球视频|足球比分|中国足球">
    <title>中超积分射手榜 — 数据|懂球帝</title>

    <script src="./js/hm.js"></script>
    <script async="" src="./js/sensorsdata.min.js"></script>
    <script src="./js/push.js"></script>
    <script src="./js/jQuery.1.11.min.js"></script>
    <link rel="shortcut icon" href="http://static1.dongqiudi.com/web-new/web/images/fav.ico?20170706"
          type="image/x-icon">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/jPaginate.css">

</head>

<body>
<script src="./js/baidu_zz_auto_push.js"></script>
<jsp:include page="header.jsp"></jsp:include>

<div id="main" class="cf">

    <jsp:include page="stat_list.jsp"></jsp:include>

    <div id="stat_detail">
        <jsp:include page="stat_tab.jsp"></jsp:include>
        <!----积分榜---->
        <table class="list_1">
            <tbody><tr>
                <th colspan="10" class="top_2">积分榜</th>
            </tr>
            <tr>
                <th>排名</th>
                <th class="team">球队</th>
                <th>场次</th>
                <th>胜</th>
                <th>平</th>
                <th>负</th>
                <th>进球</th>
                <th>失球</th>
                <th>净胜球</th>
                <th>积分</th>
            </tr>
            <c:forEach items="${list}" var="club" varStatus="vs">
                <tr class="top_rank">
                    <td>${vs.count}</td>
                    <td class="team">
                        ${club.name}
                    </td>
                    <td>${club.win+club.lose+club.draw}</td>
                    <td>${club.win}</td>
                    <td>${club.draw}</td>
                    <td>${club.lose}</td>
                    <td>${club.goals}</td>
                    <td>${club.lost}</td>
                    <td>${club.goals-club.lost}</td>
                    <td>${club.scores}</td>
                </tr>
            </c:forEach>


            </tbody></table>
        <div class="loading"><span class="load"></span> 正在加载...</div>
    </div>
    <style>

    </style>
    <script>

        Date.prototype.format = function (format) {
            var o = {
                "M+": this.getMonth() + 1, //month
                "d+": this.getDate(), //day
                "h+": this.getHours(), //hour
                "m+": this.getMinutes(), //minute
                "s+": this.getSeconds(), //second
                "q+": Math.floor((this.getMonth() + 3) / 3), //quarter
                "S": this.getMilliseconds() //millisecond
            }
            if (/(y+)/.test(format)) format = format.replace(RegExp.$1,
                (this.getFullYear() + "").substr(4 - RegExp.$1.length));
            for (var k in o)if (new RegExp("(" + k + ")").test(format))
                format = format.replace(RegExp.$1,
                    RegExp.$1.length == 1 ? o[k] :
                        ("00" + o[k]).substr(("" + o[k]).length));
            return format;
        };

    </script>

</div>

<jsp:include page="footer.jsp"></jsp:include>

<script src="./js/common.js"></script>


<script src="./js/sensors.js"></script>
<script src="./js/pc_statistics.js"></script>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?662abe3e1ab2558f09503989c9076934";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>



</body>

</html>
