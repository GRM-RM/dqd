<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

    <div id="stat_list">
        <!----侧边栏tab---->
        <a rel="51" href="javascript:find('中超')" >
            中超 <span class="hover"></span>
        </a>
        <a rel="8" href="javascript:find('英超')">
            英超 <span class="hover"></span>
        </a>
        <a rel="7" href="javascript:find('西甲')">
            西甲 <span class="hover"></span>
        </a>
        <a rel="9" href="javascript:find('德甲')">
            德甲 <span class="hover"></span>
        </a>
        <a rel="13" href="javascript:find('意甲')">
            意甲 <span class="hover"></span>
        </a>
        <a rel="10" href="javascript:find('欧冠')">
            欧冠 <span class="hover"></span>
        </a>
        <a rel="16" href="javascript:find('法甲')">
            法甲 <span class="hover"></span>
        </a>
        <a rel="148" href="javascript:find('中甲')">
            中甲 <span class="hover"></span>
        </a>
        <a rel="18" href="javascript:find('欧联')">
            欧联 <span class="hover"></span>
        </a>
        <a rel="70" href="javascript:find('英冠')">
            英冠 <span class="hover"></span>
        </a>
        <a href="javascript:find('荷甲')" class="other" style="display:none;">
            荷甲 <span class="hover"></span>
        </a>
        <a href="javascript:find('葡超')" class="other" style="display:none;">
            葡超 <span class="hover"></span>
        </a>
        <a href="javascript:find('法乙')" class="other" style="display:none;">
            法乙 <span class="hover"></span>
        </a>
        <a href="javascript:find('俄超')" class="other" style="display:none;">
            俄超 <span class="hover"></span>
        </a>
        <a href="javascript:find('土超')" class="other" style="display:none;">
            土超 <span class="hover"></span>
        </a>
        <a href="javascript:find('日职')" class="other" style="display:none;">
            日职 <span class="hover"></span>
        </a>
        <a href="javascript:find('港超')" class="other" style="display:none;">
            港超 <span class="hover"></span>
        </a>
        <a href="javascript:find('联赛')" class="other" style="display:none;">
            K联赛 <span class="hover"></span>
        </a>
        <a href="javascript:find('阿甲')" class="other" style="display:none;">
            阿甲 <span class="hover"></span>
        </a>
        <a href="javascript:find('巴甲')" class="other" style="display:none;">
            巴甲 <span class="hover"></span>
        </a>
        <dl>
            <dt id="other_list">
                <span>展开</span>
                <img src="./image/data_spread.png" alt="">
            </dt>
        </dl>
    </div>

    <div id="match_detail">
        <h3 class="cf">
            <span class="left">比赛列表</span>
            <span class="Zebra_DatePicker_Icon_Wrapper"
                  style="display: inline-block; position: relative; float: none; top: auto; right: auto; bottom: auto; left: auto;">
                <form action="/match/time" id="matchForm">
                    <input hidden type="country" id="country" name="country" value="${country}">
                    <input type="date"  placeholder="按日期查询比赛" name="time" >
                    <input type="button" style="top: 0px; left: 121px;" value="查询" onclick="findAll()" />
                </form>
            </span>
        </h3>
        <script type="text/javascript">
            function findAll() {
                $("#matchForm").submit();
            }
            function find(obj) {
                $("#country").val(obj);
                findAll();
            }
        </script>
        <div id="match_info">
            <table class="list">
                <tbody>
                <tr>
                    <th colspan="6">
                        <fmt:formatDate value="${time}" pattern="yyyy-MM-dd" /></th>
                </tr>
                <c:forEach items="${matches}" var="match">
                    <tr rel="771964" id="match_771964" class="matchItem">
                        <td class="times" style="cursor: pointer;">
                            <c:choose>
                                <c:when test="${empty match.homeScore}">
                                    <fmt:formatDate value="${match.startTime}" pattern="yyyy-MM-dd HH:mm" />
                                </c:when>
                                <c:otherwise>
                                    完场
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td class="round" style="cursor: pointer;">
                            ${match.homeName}
                        </td>
                        <td class="away" style="cursor: pointer;">
                                ${match.visitedName}
                        </td>
                        <td class="stat" style="cursor: pointer;"> ${match.homeScore}
                            - ${match.visitedScore}
                        </td>
                        <td class="home" style="cursor: pointer;">
                                ${match.visitedName}
                        </td>
                        <td class="link" style="cursor: pointer;">
                            比赛集锦&nbsp;
                        </td>
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="1" style="text-align: center">${msg}</td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="loading" style="visibility: hidden;"><span class="load"></span> 正在加载...</div>
    </div>
    <style>

    </style>
    <script>

        $('#other_list').click(function () {
            if ($('#stat_list .other').is(':visible')) {
                $('#stat_list .other').hide();
                $('#other_list span').html("展开");
                $('#other_list img').attr('src', "/image/data_spread.png");
            } else {
                $('#stat_list .other').toggle(true);
                $('#other_list span').html("收起");
                $('#other_list img').attr('src', "/image/data_retract.png");
            }
        });

        $(function () {
            setLocalTime();

            $('.list').delegate('span.more', 'mouseenter', function () {
                $(this).closest('td').find('.more_list').show();
            });
            $('.list').delegate('td.link', 'mouseleave', function () {
                $(this).find('.more_list').hide();
            });
            var comp = getUrlParam('competition');
            $('#stat_list a').each(function () {
                if ($(this).attr('rel') === comp) {
                    $(this).addClass('sel')
                }
            });

        });

        function setLocalTime() {
            $("td.time").each(function () {
                var str = $(this).attr('utc');
                var utc = new Date(Date.parse(str.replace(/-/g, "/")));
                var time = utc.getTime() + (3600 * 8 * 1000);
                var date = new Date(time);
                var display = date.format('yyyy-MM-dd hh:mm');
                $(this).text(display);
            });
        }

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
            for (var k in o) if (new RegExp("(" + k + ")").test(format))
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
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?662abe3e1ab2558f09503989c9076934";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>

</body>

</html>
