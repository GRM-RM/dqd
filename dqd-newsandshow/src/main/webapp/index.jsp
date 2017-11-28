<!DOCTYPE html>
<!-- saved from url=(0033)https://www.dongqiudi.com/?tab=5# -->
<html><head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="baidu_union_verify" content="e375dfea1f5937c9114d7fea78c91675">
        <meta name="keywords" content="懂球帝|足球新闻|足球App|足球资讯|足球直播|足球视频|足球比分|中国足球">
            <meta name="description" content="懂球帝提供专业足球资讯、足球视频、免费足球直播等内容，一切为了中国足球迷服务。懂不懂足球，都用懂球帝。">
        <title>懂球帝 — 专业权威的足球网站|足球新闻|足球资讯|足球直播</title>
        <script src="/js/hm.js"></script><script async="" src="/js/sensorsdata.min.js"></script><script src="/js/push.js"></script><script src="/js/jQuery.1.11.min.js"></script>
    	<link rel="shortcut icon" href="http://static1.dongqiudi.com/web-new/web/images/fav.ico?20170706" type="image/x-icon">
        <link rel="stylesheet" href="/css/style.css">
        <link rel="stylesheet" href="/css/jPaginate.css">

</head>
<body>
<%--<script src="/js/baidu_zz_auto_push.js"></script>--%>

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
                <img src="${USER_SESSION.avatar}" style="width: 30px">
                ${USER_SESSION.username}
                <a href="#" class="login">退出</a>
            </c:if>
        </div>
    </div>
</div>

<div id="main" class="cf">

        <div id="top" class="cf">
        <div id="show">
            <a href="javascript:void(0)" class="arrow_l">&lt;</a>
            <a href="javascript:void(0)" class="arrow_r">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt;</a>
            <ul style="margin-left: 0px;">
                <c:forEach var="news_top" items="${NEWS_TOP_LIST}">
                    <li>
                        <a href="/news_detail?id=${news_top.id}" target="_blank">
                            <img src="${news_top.picture}" alt="" href="javascript:void(0);">
                            <h3>${news_top.title}</h3>
                        </a>
                    </li>
                </c:forEach>
            </ul>
            <div id="cur">
                <a href="#" class="cur"></a>
                <a href="https://www.dongqiudi.com/?tab=5#" class=""></a>
                <a href="https://www.dongqiudi.com/?tab=5#" class=""></a>
                <a href="https://www.dongqiudi.com/?tab=5#" class=""></a>
                <a href="https://www.dongqiudi.com/?tab=5#" class=""></a>
            </div>
        </div>
        <ul id="list">
                            <li rel="877826" id="match_877826" class="cf">
                    <a class="matchinfo" href="https://www.dongqiudi.com/match/situation/50877826" target="_blank">
                        <div class="away">
                            <img src="/images/1318.png" onerror="">
                            意大利
                        </div>
                        <div class="stat">
                            <h2>
                                世欧预
                            </h2>

                            <h3>
                                0 - 0
                            </h3>

                            <p>
                                                                                                            <i>视频集锦</i>
                                                                                                </p>
                        </div>
                        <div class="home">
                            <img src="/images/2173.png" onerror="">
                            瑞典
                        </div>
                    </a>
                </li>
                            <li rel="879808" id="match_879808" class="cf mid" status="Fixture">
                    <a class="matchinfo" href="https://www.dongqiudi.com/match/analysis/50879808" target="_blank">
                        <div class="away">
                            <img src="/images/1385.png" onerror="">
                            韩国
                        </div>
                        <div class="stat">
                            <h2>
                                友谊赛
                            </h2>

                            <h3>
                                 - 
                            </h3>

                            <p>
                                                                    <span class="match_time" rel="2017-11-14 11:00:00">
                                    </span>
                                                            </p>
                        </div>
                        <div class="home">
                            <img src="/images/6816.png" onerror="">
                            塞尔维亚
                        </div>
                    </a>
                </li>
                    </ul>
    </div>
    <div id="con" class="cf">
        <div class="left" id="pjax-container">
    <div id="tab">
        <a href="/news_list?labelId=0" rel="5" class="news_tab  ${NEWS_LABEL_ID==0?'sel':''}">头条</a>
        <a href="/news_list?labelId=2" rel="1" class="news_tab  ${NEWS_LABEL_ID==2?'sel':''}">西甲</a>
        <a href="#" rel="43" class="news_tab  ">视频</a>
        <a href="/news_list?labelId=3" rel="56" class="news_tab  ${NEWS_LABEL_ID==3?'sel':''}">中超</a>
        <a href="#" rel="11" class="news_tab  ">集锦</a>
        <a href="#" rel="55" class="news_tab  ">深度</a>
        <a href="#" rel="37" class="news_tab  ">闲情</a>
        <a href="/news_list?labelId=6" rel="3" class="news_tab  ${NEWS_LABEL_ID==6?'sel':''}">英超</a>
        <a href="/news_list?labelId=5" rel="6" class="news_tab  ${NEWS_LABEL_ID==5?'sel':''}">德甲</a>
        <a href="/news_list?labelId=7" rel="4" class="news_tab  ${NEWS_LABEL_ID==7?'sel':''}">意甲</a>
        <a href="#" rel="99" class="news_tab  ">专题</a>
        <a href="#" rel="57" class="news_tab  ">五洲</a>
        <a href="#" rel="68" class="news_tab  last  ">装备</a>
    </div>
    <div id="news_list">
        <ol>
            <c:forEach var="news" items="${NEWS_LIST}">
                <li>
                    <%--<a href="#" target="_blank" class="tag_video pc_count"></a>--%>
                    <a href="/news_detail?id=${news.id}" target="_blank" class="pc_count">
                        <img src="${news.picture}" alt="${news.title}">
                    </a>
                    <h2>
                        <a href="/news_detail?id=${news.id}" target="_blank" class="pc_count">${news.title}</a>
                    </h2>
                    <p>${news.summary}</p>
                    <div class="info">
                        <span class="time"><fmt:formatDate value="${news.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                        <a class="comment pc_count" href="#" target="_blank">0</a>
                    </div>
                </li>
            </c:forEach>
        </ol>

        <div align="center" style="font-size: 20px">
            <c:if test="${NEWS_PAGE.isHasPreviousPage()}">
                <a href="/news_list?labelId=${NEWS_LABEL_ID}&pageIndex=${NEWS_PAGE.prePage}">«</a>
            </c:if>
            <c:forEach var="pageN" begin="${NEWS_PAGE.navigateFirstPage}" end="${NEWS_PAGE.navigateLastPage}">
                <a href="/news_list?labelId=${NEWS_LABEL_ID}&pageIndex=${pageN}">${pageN}</a>
            </c:forEach>
            <c:if test="${NEWS_PAGE.isHasNextPage()}">
                <a href="/news_list?labelId=${NEWS_LABEL_ID}&pageIndex=${NEWS_PAGE.nextPage}">»</a>
            </c:if>
        </div>
    </div>
            <ul class="pagination"><li class="disabled"><span>«</span></li> <li class="active"><span>1</span></li><li><a href="http://www.dongqiudi.com/?tab=5&amp;page=2">2</a></li><li><a href="http://www.dongqiudi.com/?tab=5&amp;page=3">3</a></li><li><a href="http://www.dongqiudi.com/?tab=5&amp;page=4">4</a></li><li><a href="http://www.dongqiudi.com/?tab=5&amp;page=5">5</a></li><li><a href="http://www.dongqiudi.com/?tab=5&amp;page=6">6</a></li><li><a href="http://www.dongqiudi.com/?tab=5&amp;page=7">7</a></li><li><a href="http://www.dongqiudi.com/?tab=5&amp;page=8">8</a></li><li class="disabled"><span>...</span></li><li><a href="http://www.dongqiudi.com/?tab=5&amp;page=1093">1093</a></li><li><a href="http://www.dongqiudi.com/?tab=5&amp;page=1094">1094</a></li> <li><a href="http://www.dongqiudi.com/?tab=5&amp;page=2" rel="next">»</a></li></ul>
    </div>

<style>
    #infscr-loading {
        text-align:center;
        margin: 10px;
    }
</style>
        <div class="right">
            <div id="rank_list" class="conFrame">
                <div class="title cf">
                    <span>积分榜</span>
                    <a href="https://www.dongqiudi.com/data" class="rank_more" target="_blank">更多</a>
                </div>
                <div class="tab" id="rank">
                                            <a href="https://www.dongqiudi.com/?tab=5#" rel="23" class="sel">中超</a>
                                            <a href="https://www.dongqiudi.com/?tab=5#" rel="13" class="">英超</a>
                                            <a href="https://www.dongqiudi.com/?tab=5#" rel="15" class="">西甲</a>
                                            <a href="https://www.dongqiudi.com/?tab=5#" rel="16" class="">德甲</a>
                                            <a href="https://www.dongqiudi.com/?tab=5#" rel="14" class="">意甲</a>
                                    </div>
                                    <table class="cell_rank" rel="23" style="display:inline">
                        <tbody><tr>
                            <th class="rank">排名</th>
                            <th class="team_name">球队</th>
                            <th class="rel">胜/平/负</th>
                            <th class="stat">积分</th>
                        </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_1">1</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/6648.html" target="_blank">
                                        <img src="/images/6648.png" alt="">
                                        广州恒大淘宝
                                    </a>
                                </td>
                                <td>20 / 4
                                    / 6</td>
                                <td>64</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_2">2</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/10655.html" target="_blank">
                                        <img src="/images/10655.png" alt="">
                                        上海上港
                                    </a>
                                </td>
                                <td>17 / 7
                                    / 6</td>
                                <td>58</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_3">3</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/18583.html" target="_blank">
                                        <img src="/images/18583.png" alt="">
                                        天津权健
                                    </a>
                                </td>
                                <td>15 / 9
                                    / 6</td>
                                <td>54</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_4">4</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/21563.html" target="_blank">
                                        <img src="/images/21563.png" alt="">
                                        河北华夏幸福
                                    </a>
                                </td>
                                <td>15 / 7
                                    / 8</td>
                                <td>52</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_5">5</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/425.html" target="_blank">
                                        <img src="/images/425.png" alt="">
                                        广州富力
                                    </a>
                                </td>
                                <td>15 / 7
                                    / 8</td>
                                <td>52</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_6">6</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/434.html" target="_blank">
                                        <img src="/images/434.png" alt="">
                                        山东鲁能泰山
                                    </a>
                                </td>
                                <td>13 / 10
                                    / 7</td>
                                <td>49</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_7">7</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/437.html" target="_blank">
                                        <img src="/images/437.png" alt="">
                                        长春亚泰
                                    </a>
                                </td>
                                <td>12 / 8
                                    / 10</td>
                                <td>44</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_8">8</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/18584.html" target="_blank">
                                        <img src="/images/18584.png" alt="">
                                        贵州恒丰智诚
                                    </a>
                                </td>
                                <td>12 / 6
                                    / 12</td>
                                <td>42</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_9">9</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/429.html" target="_blank">
                                        <img src="/images/429.png" alt="">
                                        北京中赫国安
                                    </a>
                                </td>
                                <td>11 / 7
                                    / 12</td>
                                <td>40</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_10">10</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/432.html" target="_blank">
                                        <img src="/images/432.png" alt="">
                                        重庆当代力帆
                                    </a>
                                </td>
                                <td>9 / 9
                                    / 12</td>
                                <td>36</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_11">11</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/433.html" target="_blank">
                                        <img src="/images/433.png" alt="">
                                        上海绿地申花
                                    </a>
                                </td>
                                <td>9 / 8
                                    / 13</td>
                                <td>35</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_12">12</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/441.html" target="_blank">
                                        <img src="/images/441.png" alt="">
                                        江苏苏宁易购
                                    </a>
                                </td>
                                <td>7 / 11
                                    / 12</td>
                                <td>32</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_13">13</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/431.html" target="_blank">
                                        <img src="/images/431.png" alt="">
                                        天津亿利
                                    </a>
                                </td>
                                <td>8 / 7
                                    / 15</td>
                                <td>31</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_14">14</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/442.html" target="_blank">
                                        <img src="/images/442.png" alt="">
                                        河南建业
                                    </a>
                                </td>
                                <td>7 / 9
                                    / 14</td>
                                <td>30</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_15">15</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/3826.html" target="_blank">
                                        <img src="/images/3826.png" alt="">
                                        延边富德
                                    </a>
                                </td>
                                <td>5 / 7
                                    / 18</td>
                                <td>22</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_16">16</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/3139.html" target="_blank">
                                        <img src="/images/3139.png" alt="">
                                        辽宁沈阳开新
                                    </a>
                                </td>
                                <td>4 / 6
                                    / 20</td>
                                <td>18</td>
                            </tr>
                                            </tbody></table>
                                    <table class="cell_rank" rel="13" style="display:none">
                        <tbody><tr>
                            <th class="rank">排名</th>
                            <th class="team_name">球队</th>
                            <th class="rel">胜/平/负</th>
                            <th class="stat">积分</th>
                        </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_1">1</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/676.html" target="_blank">
                                        <img src="/images/676.png" alt="">
                                        曼城
                                    </a>
                                </td>
                                <td>10 / 1
                                    / 0</td>
                                <td>31</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_2">2</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/662.html" target="_blank">
                                        <img src="/images/662.png" alt="">
                                        曼联
                                    </a>
                                </td>
                                <td>7 / 2
                                    / 2</td>
                                <td>23</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_3">3</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/675.html" target="_blank">
                                        <img src="/images/675.png" alt="">
                                        托特纳姆热刺
                                    </a>
                                </td>
                                <td>7 / 2
                                    / 2</td>
                                <td>23</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_4">4</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/661.html" target="_blank">
                                        <img src="/images/661.png" alt="">
                                        切尔西
                                    </a>
                                </td>
                                <td>7 / 1
                                    / 3</td>
                                <td>22</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_5">5</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/663.html" target="_blank">
                                        <img src="/images/663.png" alt="">
                                        利物浦
                                    </a>
                                </td>
                                <td>5 / 4
                                    / 2</td>
                                <td>19</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_6">6</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/660.html" target="_blank">
                                        <img src="/images/660.png" alt="">
                                        阿森纳
                                    </a>
                                </td>
                                <td>6 / 1
                                    / 4</td>
                                <td>19</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_7">7</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/698.html" target="_blank">
                                        <img src="/images/698.png" alt="">
                                        伯恩利
                                    </a>
                                </td>
                                <td>5 / 4
                                    / 2</td>
                                <td>19</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_8">8</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/703.html" target="_blank">
                                        <img src="/images/703.png" alt="">
                                        布莱顿
                                    </a>
                                </td>
                                <td>4 / 3
                                    / 4</td>
                                <td>15</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_9">9</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/696.html" target="_blank">
                                        <img src="/images/696.png" alt="">
                                        沃特福德
                                    </a>
                                </td>
                                <td>4 / 3
                                    / 4</td>
                                <td>15</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_10">10</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/726.html" target="_blank">
                                        <img src="/images/726.png" alt="">
                                        哈德斯菲尔德
                                    </a>
                                </td>
                                <td>4 / 3
                                    / 4</td>
                                <td>15</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_11">11</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/664.html" target="_blank">
                                        <img src="/images/664.png" alt="">
                                        纽卡斯尔
                                    </a>
                                </td>
                                <td>4 / 2
                                    / 5</td>
                                <td>14</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_12">12</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/682.html" target="_blank">
                                        <img src="/images/682.png" alt="">
                                        莱斯特城
                                    </a>
                                </td>
                                <td>3 / 4
                                    / 4</td>
                                <td>13</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_13">13</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/670.html" target="_blank">
                                        <img src="/images/670.png" alt="">
                                        南安普顿
                                    </a>
                                </td>
                                <td>3 / 4
                                    / 4</td>
                                <td>13</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_14">14</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/690.html" target="_blank">
                                        <img src="/images/690.png" alt="">
                                        斯托克城
                                    </a>
                                </td>
                                <td>3 / 3
                                    / 5</td>
                                <td>12</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_15">15</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/674.html" target="_blank">
                                        <img src="/images/674.png" alt="">
                                        埃弗顿
                                    </a>
                                </td>
                                <td>3 / 2
                                    / 6</td>
                                <td>11</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_16">16</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/678.html" target="_blank">
                                        <img src="/images/678.png" alt="">
                                        西布朗维奇
                                    </a>
                                </td>
                                <td>2 / 4
                                    / 5</td>
                                <td>10</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_17">17</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/711.html" target="_blank">
                                        <img src="/images/711.png" alt="">
                                        伯恩茅斯
                                    </a>
                                </td>
                                <td>3 / 1
                                    / 7</td>
                                <td>10</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_18">18</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/684.html" target="_blank">
                                        <img src="/images/684.png" alt="">
                                        西汉姆联
                                    </a>
                                </td>
                                <td>2 / 3
                                    / 6</td>
                                <td>9</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_19">19</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/738.html" target="_blank">
                                        <img src="/images/738.png" alt="">
                                        斯旺西
                                    </a>
                                </td>
                                <td>2 / 2
                                    / 7</td>
                                <td>8</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_20">20</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/679.html" target="_blank">
                                        <img src="/images/679.png" alt="">
                                        水晶宫
                                    </a>
                                </td>
                                <td>1 / 1
                                    / 9</td>
                                <td>4</td>
                            </tr>
                                            </tbody></table>
                                    <table class="cell_rank" rel="15" style="display:none">
                        <tbody><tr>
                            <th class="rank">排名</th>
                            <th class="team_name">球队</th>
                            <th class="rel">胜/平/负</th>
                            <th class="stat">积分</th>
                        </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_1">1</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2017.html" target="_blank">
                                        <img src="/images/2017.png" alt="">
                                        巴塞罗那
                                    </a>
                                </td>
                                <td>10 / 1
                                    / 0</td>
                                <td>31</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_2">2</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2015.html" target="_blank">
                                        <img src="/images/2015.png" alt="">
                                        瓦伦西亚
                                    </a>
                                </td>
                                <td>8 / 3
                                    / 0</td>
                                <td>27</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_3">3</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2016.html" target="_blank">
                                        <img src="/images/2016.png" alt="">
                                        皇家马德里
                                    </a>
                                </td>
                                <td>7 / 2
                                    / 2</td>
                                <td>23</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_4">4</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2020.html" target="_blank">
                                        <img src="/images/2020.png" alt="">
                                        马德里竞技
                                    </a>
                                </td>
                                <td>6 / 5
                                    / 0</td>
                                <td>23</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_5">5</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2023.html" target="_blank">
                                        <img src="/images/2023.png" alt="">
                                        比利亚雷亚尔
                                    </a>
                                </td>
                                <td>6 / 2
                                    / 3</td>
                                <td>20</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_6">6</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2021.html" target="_blank">
                                        <img src="/images/2021.png" alt="">
                                        塞维利亚
                                    </a>
                                </td>
                                <td>6 / 1
                                    / 4</td>
                                <td>19</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_7">7</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2028.html" target="_blank">
                                        <img src="/images/2028.png" alt="">
                                        皇家社会
                                    </a>
                                </td>
                                <td>5 / 2
                                    / 4</td>
                                <td>17</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_8">8</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2025.html" target="_blank">
                                        <img src="/images/2025.png" alt="">
                                        皇家贝蒂斯
                                    </a>
                                </td>
                                <td>5 / 2
                                    / 4</td>
                                <td>17</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_9">9</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2053.html" target="_blank">
                                        <img src="/images/2053.png" alt="">
                                        莱加内斯
                                    </a>
                                </td>
                                <td>5 / 2
                                    / 4</td>
                                <td>17</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_10">10</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2101.html" target="_blank">
                                        <img src="/images/2101.png" alt="">
                                        赫罗纳
                                    </a>
                                </td>
                                <td>4 / 3
                                    / 4</td>
                                <td>15</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_11">11</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2033.html" target="_blank">
                                        <img src="/images/2033.png" alt="">
                                        塞尔塔
                                    </a>
                                </td>
                                <td>4 / 2
                                    / 5</td>
                                <td>14</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_12">12</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2039.html" target="_blank">
                                        <img src="/images/2039.png" alt="">
                                        赫塔费
                                    </a>
                                </td>
                                <td>3 / 4
                                    / 4</td>
                                <td>13</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_13">13</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2032.html" target="_blank">
                                        <img src="/images/2032.png" alt="">
                                        西班牙人
                                    </a>
                                </td>
                                <td>3 / 4
                                    / 4</td>
                                <td>13</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_14">14</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2036.html" target="_blank">
                                        <img src="/images/2036.png" alt="">
                                        莱万特
                                    </a>
                                </td>
                                <td>2 / 6
                                    / 3</td>
                                <td>12</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_15">15</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2019.html" target="_blank">
                                        <img src="/images/2019.png" alt="">
                                        毕尔巴鄂竞技
                                    </a>
                                </td>
                                <td>3 / 2
                                    / 6</td>
                                <td>11</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_16">16</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2018.html" target="_blank">
                                        <img src="/images/2018.png" alt="">
                                        拉科鲁尼亚
                                    </a>
                                </td>
                                <td>3 / 2
                                    / 6</td>
                                <td>11</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_17">17</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2042.html" target="_blank">
                                        <img src="/images/2042.png" alt="">
                                        埃瓦尔
                                    </a>
                                </td>
                                <td>2 / 2
                                    / 7</td>
                                <td>8</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_18">18</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2037.html" target="_blank">
                                        <img src="/images/2037.png" alt="">
                                        阿拉维斯
                                    </a>
                                </td>
                                <td>2 / 0
                                    / 9</td>
                                <td>6</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_19">19</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2055.html" target="_blank">
                                        <img src="/images/2055.png" alt="">
                                        拉斯帕尔马斯
                                    </a>
                                </td>
                                <td>2 / 0
                                    / 9</td>
                                <td>6</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_20">20</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/2024.html" target="_blank">
                                        <img src="/images/2024.png" alt="">
                                        马拉加
                                    </a>
                                </td>
                                <td>1 / 1
                                    / 9</td>
                                <td>4</td>
                            </tr>
                                            </tbody></table>
                                    <table class="cell_rank" rel="16" style="display:none">
                        <tbody><tr>
                            <th class="rank">排名</th>
                            <th class="team_name">球队</th>
                            <th class="rel">胜/平/负</th>
                            <th class="stat">积分</th>
                        </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_1">1</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/961.html" target="_blank">
                                        <img src="/images/961.png" alt="">
                                        拜仁慕尼黑
                                    </a>
                                </td>
                                <td>8 / 2
                                    / 1</td>
                                <td>26</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_2">2</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/13410.html" target="_blank">
                                        <img src="/images/13410.png" alt="">
                                        RB莱比锡
                                    </a>
                                </td>
                                <td>7 / 1
                                    / 3</td>
                                <td>22</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_3">3</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/964.html" target="_blank">
                                        <img src="/images/964.png" alt="">
                                        多特蒙德
                                    </a>
                                </td>
                                <td>6 / 2
                                    / 3</td>
                                <td>20</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_4">4</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/966.html" target="_blank">
                                        <img src="/images/966.png" alt="">
                                        沙尔克04
                                    </a>
                                </td>
                                <td>6 / 2
                                    / 3</td>
                                <td>20</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_5">5</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1001.html" target="_blank">
                                        <img src="/images/1001.png" alt="">
                                        霍芬海姆
                                    </a>
                                </td>
                                <td>5 / 4
                                    / 2</td>
                                <td>19</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_6">6</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/972.html" target="_blank">
                                        <img src="/images/972.png" alt="">
                                        汉诺威96
                                    </a>
                                </td>
                                <td>5 / 3
                                    / 3</td>
                                <td>18</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_7">7</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/979.html" target="_blank">
                                        <img src="/images/979.png" alt="">
                                        法兰克福
                                    </a>
                                </td>
                                <td>5 / 3
                                    / 3</td>
                                <td>18</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_8">8</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/971.html" target="_blank">
                                        <img src="/images/971.png" alt="">
                                        门兴格拉德巴赫
                                    </a>
                                </td>
                                <td>5 / 3
                                    / 3</td>
                                <td>18</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_9">9</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/963.html" target="_blank">
                                        <img src="/images/963.png" alt="">
                                        勒沃库森
                                    </a>
                                </td>
                                <td>4 / 4
                                    / 3</td>
                                <td>16</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_10">10</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1000.html" target="_blank">
                                        <img src="/images/1000.png" alt="">
                                        奥格斯堡
                                    </a>
                                </td>
                                <td>4 / 4
                                    / 3</td>
                                <td>16</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_11">11</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/974.html" target="_blank">
                                        <img src="/images/974.png" alt="">
                                        柏林赫塔
                                    </a>
                                </td>
                                <td>3 / 5
                                    / 3</td>
                                <td>14</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_12">12</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/962.html" target="_blank">
                                        <img src="/images/962.png" alt="">
                                        斯图加特
                                    </a>
                                </td>
                                <td>4 / 1
                                    / 6</td>
                                <td>13</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_13">13</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/977.html" target="_blank">
                                        <img src="/images/977.png" alt="">
                                        美因茨
                                    </a>
                                </td>
                                <td>3 / 3
                                    / 5</td>
                                <td>12</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_14">14</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/968.html" target="_blank">
                                        <img src="/images/968.png" alt="">
                                        沃尔夫斯堡
                                    </a>
                                </td>
                                <td>1 / 8
                                    / 2</td>
                                <td>11</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_15">15</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/967.html" target="_blank">
                                        <img src="/images/967.png" alt="">
                                        汉堡
                                    </a>
                                </td>
                                <td>3 / 1
                                    / 7</td>
                                <td>10</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_16">16</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/970.html" target="_blank">
                                        <img src="/images/970.png" alt="">
                                        弗赖堡
                                    </a>
                                </td>
                                <td>1 / 5
                                    / 5</td>
                                <td>8</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_17">17</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/960.html" target="_blank">
                                        <img src="/images/960.png" alt="">
                                        云达不莱梅
                                    </a>
                                </td>
                                <td>0 / 5
                                    / 6</td>
                                <td>5</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_18">18</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/980.html" target="_blank">
                                        <img src="/images/980.png" alt="">
                                        科隆
                                    </a>
                                </td>
                                <td>0 / 2
                                    / 9</td>
                                <td>2</td>
                            </tr>
                                            </tbody></table>
                                    <table class="cell_rank" rel="14" style="display:none">
                        <tbody><tr>
                            <th class="rank">排名</th>
                            <th class="team_name">球队</th>
                            <th class="rel">胜/平/负</th>
                            <th class="stat">积分</th>
                        </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_1">1</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1270.html" target="_blank">
                                        <img src="/images/1270.png" alt="">
                                        那不勒斯
                                    </a>
                                </td>
                                <td>10 / 2
                                    / 0</td>
                                <td>32</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_2">2</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1242.html" target="_blank">
                                        <img src="/images/1242.png" alt="">
                                        尤文图斯
                                    </a>
                                </td>
                                <td>10 / 1
                                    / 1</td>
                                <td>31</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_3">3</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1244.html" target="_blank">
                                        <img src="/images/1244.png" alt="">
                                        国际米兰
                                    </a>
                                </td>
                                <td>9 / 3
                                    / 0</td>
                                <td>30</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_4">4</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1245.html" target="_blank">
                                        <img src="/images/1245.png" alt="">
                                        拉齐奥
                                    </a>
                                </td>
                                <td>9 / 1
                                    / 1</td>
                                <td>28</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_5">5</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1241.html" target="_blank">
                                        <img src="/images/1241.png" alt="">
                                        罗马
                                    </a>
                                </td>
                                <td>9 / 0
                                    / 2</td>
                                <td>27</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_6">6</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1247.html" target="_blank">
                                        <img src="/images/1247.png" alt="">
                                        桑普多利亚
                                    </a>
                                </td>
                                <td>7 / 2
                                    / 2</td>
                                <td>23</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_7">7</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1240.html" target="_blank">
                                        <img src="/images/1240.png" alt="">
                                        AC米兰
                                    </a>
                                </td>
                                <td>6 / 1
                                    / 5</td>
                                <td>19</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_8">8</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1268.html" target="_blank">
                                        <img src="/images/1268.png" alt="">
                                        都灵
                                    </a>
                                </td>
                                <td>4 / 5
                                    / 3</td>
                                <td>17</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_9">9</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1259.html" target="_blank">
                                        <img src="/images/1259.png" alt="">
                                        佛罗伦萨
                                    </a>
                                </td>
                                <td>5 / 1
                                    / 6</td>
                                <td>16</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_10">10</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1255.html" target="_blank">
                                        <img src="/images/1255.png" alt="">
                                        亚特兰大
                                    </a>
                                </td>
                                <td>4 / 4
                                    / 4</td>
                                <td>16</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_11">11</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1248.html" target="_blank">
                                        <img src="/images/1248.png" alt="">
                                        切沃
                                    </a>
                                </td>
                                <td>4 / 4
                                    / 4</td>
                                <td>16</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_12">12</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1249.html" target="_blank">
                                        <img src="/images/1249.png" alt="">
                                        博洛尼亚
                                    </a>
                                </td>
                                <td>4 / 2
                                    / 6</td>
                                <td>14</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_13">13</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1246.html" target="_blank">
                                        <img src="/images/1246.png" alt="">
                                        乌迪内斯
                                    </a>
                                </td>
                                <td>4 / 0
                                    / 7</td>
                                <td>12</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_14">14</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1256.html" target="_blank">
                                        <img src="/images/1256.png" alt="">
                                        卡利亚里
                                    </a>
                                </td>
                                <td>4 / 0
                                    / 8</td>
                                <td>12</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_15">15</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1280.html" target="_blank">
                                        <img src="/images/1280.png" alt="">
                                        克罗托内
                                    </a>
                                </td>
                                <td>3 / 3
                                    / 6</td>
                                <td>12</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_16">16</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1287.html" target="_blank">
                                        <img src="/images/1287.png" alt="">
                                        斯帕尔
                                    </a>
                                </td>
                                <td>2 / 3
                                    / 7</td>
                                <td>9</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_17">17</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/5681.html" target="_blank">
                                        <img src="/images/5681.png" alt="">
                                        萨索洛
                                    </a>
                                </td>
                                <td>2 / 2
                                    / 8</td>
                                <td>8</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_18">18</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1276.html" target="_blank">
                                        <img src="/images/1276.png" alt="">
                                        热那亚
                                    </a>
                                </td>
                                <td>1 / 3
                                    / 8</td>
                                <td>6</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_19">19</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1277.html" target="_blank">
                                        <img src="/images/1277.png" alt="">
                                        维罗纳
                                    </a>
                                </td>
                                <td>1 / 3
                                    / 8</td>
                                <td>6</td>
                            </tr>
                                                    <tr class="stat_list" style="cursor:pointer;">
                                <td><span class="top_20">20</span></td>
                                <td class="team_name">
                                    <a href="https://www.dongqiudi.com/team/1302.html" target="_blank">
                                        <img src="/images/1302.png" alt="">
                                        贝内文托
                                    </a>
                                </td>
                                <td>0 / 0
                                    / 12</td>
                                <td>0</td>
                            </tr>
                                            </tbody></table>
                            </div>
            <div id="hot_list" class="conFrame">
                <div class="title cf">
                    <span>新闻热评</span>
                </div>
                <dl>
                                            <dt class="cf">
                            <img src="/images/5JoXMjmEu1.9222.jpg!avatarsmall" alt="">
                        <h4>saintkaka22</h4>
                        <span class="time">2017-11-13 20:08:40</span>
                        <a href="javascript:void(0);" onclick="up(67602485)" class="zan" name="up_67602485">赞（1262）</a>
                        </dt>
                        <dd>
                            <p>
                                诺兰蝙蝠侠三部曲第二部黑暗骑士的最后，蝙蝠侠表示要承担一切罪恶骑着战车没入黑暗的那个背影太伟大，完全被征服。

第三部黑暗骑士崛起里，猫女和蝙蝠侠的对话，猫女：跟我一起走吧。救救你自己，你已经不欠他们了，你给了他们你的所有！
而蝙蝠侠只是说：Not everything. Not yet.（不是所有，还没有给出我的所有）

他给出了关于英雄的定义，那就是责任、强大的内心、对正义的偏执、承受误解与孤独。他让Batman成为了一种象征，任何人都可以成为Batman，这是其他英雄做不到的，其他英雄失去超能力或许就不是超级英雄了，而蝙蝠侠无论怎么样，他都是蝙蝠侠，即使没有了盔甲和战车，他还是Batman。

人的恐惧，贪婪，欲望等等恶念都是无限的，但人性的伟大便在于用我们所认知的善去克服这些我们所看到的恶。这便是我认为的，蝙蝠侠最核心的魅力。他在面对这些恶的时候，并没有退缩，这些内心的影射和缩影只会激励着他变得更加强大，去完成他心中那份善所赋予他的使命。他本可以成为哥谭的罪恶之王。然而，他选择了救赎心中的罪恶让一切的恶被他的正义所降服。

就像他说的：每个人都可以做英雄，哪怕是做一件很小的事，比如给一个小男孩披上外衣，让他安心，让他知道生活还在继续。

顺便吹一波诺兰，他接手后的蝙蝠侠完全和其他英雄片不是一个等级了。
蝙蝠侠三部曲，史上最伟大的超级英雄系列
第二部黑暗骑士，史上最伟大的超级英雄电影
没有之一
                            </p>
                                                            <span>评论于 <a class="news_comment" href="https://www.dongqiudi.com/article/462526" target="_blank">D站风云榜：最受欢迎的美漫超级英雄MVP是谁？</a></span>
                                                    </dd>
                                            <dt class="cf">
                            <img src="/images/pXad8tcdhn_avatar.jpg!avatarsmall" alt="">
                        <h4>米兰主教练加图索</h4>
                        <span class="time">2017-11-14 05:42:41</span>
                        <a href="javascript:void(0);" onclick="up(67626796)" class="zan" name="up_67626796">赞（1032）</a>
                        </dt>
                        <dd>
                            <p>
                                一将无能，累死三军。
文图拉的球队没有时间了，多么痛的领悟。
                            </p>
                                                            <span>评论于 <a class="news_comment" href="https://www.dongqiudi.com/article/462716" target="_blank">意大利0-0瑞典，总比分0-1遭淘汰，60年后再次无缘世界杯</a></span>
                                                    </dd>
                                            <dt class="cf">
                            <img src="/images/L4lcfFyker_thumb_1484882088115.jpg!avatarsmall" alt="">
                        <h4>小黑屋里贝颖的弟弟</h4>
                        <span class="time">2017-11-13 19:19:52</span>
                        <a href="javascript:void(0);" onclick="up(67599449)" class="zan" name="up_67599449">赞（920）</a>
                        </dt>
                        <dd>
                            <p>
                                都是人才
                            </p>
                                                            <span>评论于 <a class="news_comment" href="https://www.dongqiudi.com/article/462543" target="_blank">足球史上最烂20秒，这令人窒息的操作真是XJBT精髓的完美体现</a></span>
                                                    </dd>
                                            <dt class="cf">
                            <img src="/images/ExYHS6DKLD_thumb_1496790087744.jpg!avatarsmall" alt="">
                        <h4>不说话的tom猫</h4>
                        <span class="time">2017-11-14 06:02:38</span>
                        <a href="javascript:void(0);" onclick="up(67629961)" class="zan" name="up_67629961">赞（897）</a>
                        </dt>
                        <dd>
                            <p>
                                讲不出再见。没有布冯的意大利，我都懒得多看一眼。
                            </p>
                                                            <span>评论于 <a class="news_comment" href="https://www.dongqiudi.com/article/462732" target="_blank">官方：布冯宣布退出国家队</a></span>
                                                    </dd>
                                            <dt class="cf">
                            <img src="/images/KFWT36HHRu_thumb_1426064172291.jpg!avatarsmall" alt="">
                        <h4>KeisukeHonda</h4>
                        <span class="time">2017-11-14 05:48:07</span>
                        <a href="javascript:void(0);" onclick="up(67627910)" class="zan" name="up_67627910">赞（892）</a>
                        </dt>
                        <dd>
                            <p>
                                那啥，明年中国杯我们请上意大利，请上智利，请上美国，请上厄瓜多尔，请上荷兰，请上希腊，请上乌克兰，请上阿尔及利亚，请上喀麦隆踢一次中国杯怎么样[感动][感动][感动]
                            </p>
                                                            <span>评论于 <a class="news_comment" href="https://www.dongqiudi.com/article/462716" target="_blank">意大利0-0瑞典，总比分0-1遭淘汰，60年后再次无缘世界杯</a></span>
                                                    </dd>
                                    </dl>
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
                <dd><a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802020789" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img src="/images/beian.png" style="float:left;"><p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">京公网安备 11010802020789号</p></a></dd>
                <dd><a target="_blank" href="http://static1.dongqiudi.com/web-new/web/images/shipinjingying.jpg">食品经营许可证</a> </dd>
                                <dd>北京多格科技有限公司</dd>
                    </dl>
    </div>
</div>
<%--<div id="mask">
    <div id="pop">
        <a href="https://www.dongqiudi.com/?tab=5#" class="close"></a>
            <h3><span class="icon_sad"></span> 非常抱歉！</h3>
            <p></p>
            <a href="https://www.dongqiudi.com/?tab=5#" class="btn"></a>
    </div>
</div>--%>
<div id="blink">
    <div id="popUp">
     <p></p>
    </div>
</div>
<div id="ctr">
    <div class="code"></div>
    <span class="icon_qr"></span>
    <a href="https://www.dongqiudi.com/?tab=5#" class="b_t"></a>
</div>
<script src="/js/common.js"></script>


<script src="/js/sensors.js"></script>
<script src="/js/pc_statistics.js"></script>
    <script type="text/javascript" src="/js/jsrender.min.js"></script>
    <script type="text/javascript" src="/js/jquery.pjax.js"></script>
    <script type="text/javascript" src="/js/main.js"></script>
    <!-- Archive Template -->
    <script id="archiveTemplate" type="text/x-jsrender">
        <li>
            <a href="{{:web_url}}" target="_blank">
                <img src="{{:thumb}}" alt="{{:title}}">
                <h2>{{:title }}</h2>
            </a>
            <p>{{:description}}</p>
            <div class="info">
                <span class="time">{{:display_time}}{{:official_account}}</span>
                <a class="comment" href="{{:web_url}}#share" target="_blank">{{:comments_total}}</a>
            </div>
        </li>

    </script>

    <script>
        var times = 0;
        var scroll_locked = false;
        var scroll_times = 1;
        var week_name = new Array("周日", "周一", "周二", "周三", "周四", "周五", "周六");

        $(function () {
//            updateMatches();
            $(document).pjax('#tab a', '#pjax-container', {scrollTo: false});

            $('#rank a').on('click', function (event) {
                event.preventDefault();
                var id = $(this).attr('rel');
                $(this).parent().children('.sel').removeClass('sel');
                $(this).addClass('sel');
                $('table.cell_rank').hide();
                $('table.cell_rank[rel=' + id + ']').show();

                // 首页热力图打点
                sa.track('pc_index_hot_map', {
                    group: 'index_rank',
                    name: 'index_rank_tab',
                })
            });

            $(document).scroll(function () {
                window.setTimeout(function () {
                    if (scroll_times < 3 && !scroll_locked) {
                        var allHeight = document.body.scrollHeight;
                        var sHeight = document.documentElement.scrollTop || document.body.scrollTop;
                        var winHeight = document.documentElement.clientHeight;
                        var margin = allHeight - sHeight - winHeight;

                        if (margin < 100) {
                            scroll_locked = true;
                            var page = 1;
                            var tab = 1;
                            if (request('page')) {
                                page = parseInt(request('page'));
                            }
                            if (request('tab')) {
                                tab = request('tab');
                            }
                            page = page + scroll_times;

                            scroll_times = scroll_times + 1;

                            loadPage(tab, page);
                        }
                    }
                }, 100)
            });

        });

        /*function loadPage(id, page) {
            $('.loading').css({visibility: 'visible'});
            $.getJSON('/archives/' + id + '?page=' + page, function (data) {
                var html = $("#archiveTemplate").render(data.data);
                if (data.current_page == 1) {
                    $('#news_list ol').empty();
                }
                $(html).appendTo('#news_list ol');
                $('.pagination').replaceWith(data.render);

                $('.loading').css({visibility: 'hidden'});
                scroll_locked = false;
                if (scroll_times === 3) {
                    $('.pagination').css('visibility', 'visible')
                }
            });
        }*/
//
//        window.setInterval(function () {
//            updateMatches();
//        }, 15000);


        var updated = false;
        function updateMatches() {
            var i = $('#list').find('li.cf').length;
            var match_ids = [];
            for (var q = 0; q < i; q++) {
                var item = $('#list li.cf').eq(q);
                if (!updated || item.attr('status') == 'Playing') {
                    match_ids.push(item.attr('rel'))
                }
            }
            updated = true;

            if (match_ids.length > 0) {
                $.ajax({
                    url: '/match/query_new',
                    type: 'POST',
                    data: {'ids': match_ids, 'times': times},
                    success: function (data) {
                        console.log(data)
                        for (i in data) {
                            var match = data[i];
                            var id = match.id;
                            if (match.status == 'Playing') {
                                $('#match_' + id).find('h3').html(match.result);
                                var time = 0;
                                if (match.minute) {
                                    time = match.minute;
                                }
                                var status = "<i>" + time + "'</i>";
                                if (match.video || $('#match_' + id).find('p').attr("video")) {
                                    status = status + "<br><i>视频直播中</i>";
                                    $('#match_' + id).find('p').attr("video", true);
                                }
                                $('#match_' + id).find('p').html(status);
                            } else if (match.status == 'Played') {
                                $('#match_' + id).find('h3').html(match.result);

                                var status = "完场";
                                if (match.video || $('#match_' + id).find('p').attr("video")) {
                                    status = "<i>视频集锦</i>";
                                    $('#match_' + id).find('p').attr("video", true);
                                }
                                $('#match_' + id).find('p').html(status);
                            }
                            else {
                                $('#match_' + id).find('h3').html(" - ");
                                var status = '时间待定';
                                if (match.timestamp) {
                                    status = localTime(match.timestamp);
                                }
                                if (match.video || $('#match_' + id).find('p').attr("video")) {
                                    status = status + "<i>  直播</i>";
                                    $('#match_' + id).find('p').attr("video", true);
                                }
                                $('#match_' + id).find('p').html(status);
                            }
                        }
                    }
                });

                times++;
            }
        }

        var localTime = function (timestamp) {
            var date = new Date(timestamp * 1000);


            var day = date.format("MM/dd");
            var week = week_name[date.getDay()];
            var time = date.format("hh:mm");

            return day + " " + week + " " + time;
        }

        var up = function (id) {

            // 热力图打点
              sa.track('pc_index_hot_map', {
                  group: 'index_news_comment',
                  name: 'index_news_comment_up',
              })

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
            for (var k in o)if (new RegExp("(" + k + ")").test(format))
                format = format.replace(RegExp.$1,
                    RegExp.$1.length == 1 ? o[k] :
                        ("00" + o[k]).substr(("" + o[k]).length));
            return format;
        };
    </script>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?662abe3e1ab2558f09503989c9076934";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>

</body></html>