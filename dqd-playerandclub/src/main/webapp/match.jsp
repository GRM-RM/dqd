<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

        <table class="list_2" id="schedule">
            <thead>
            <tr>
                <th class="prev" width="30%">
                    <a style="color: #fff;"
                       href="/match/list?country=${country}&round=${round-1}">&lt;
                        上一轮</a>
                </th>
                <th colspan="2" id="schedule_title" width="40%"> 第${round}轮</th>
                <th class="next" width="30%">
                    <a style="color: #fff;"
                       href="/match/list?country=${country}&round=${round+1}">
                        下一轮</a> &gt;
                </th>
            </tr>
            </thead>
            <tbody id="schduleContent">
            <c:forEach items="${matches}" var="match">
                <tr class="matchinfo" style="cursor: pointer;" >
                    <td class="time" ><fmt:formatDate value="${match.startTime}" pattern="yyyy-MM-dd HH:mm"></fmt:formatDate> </td>
                    <td class="away">
                            ${match.homeName}
                    </td>
                    <td class="status">${match.homeScore}:${match.visitedScore}</td>
                    <td class="home">
                            ${match.visitedName}
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="4" style="text-align:center">${msg}</td>
            </tr>

            </tbody>
        </table>

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
