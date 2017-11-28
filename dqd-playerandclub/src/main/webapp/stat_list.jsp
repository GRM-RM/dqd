<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<script type="text/javascript" src="/js/jQuery.1.11.min.js"></script>
<div id="stat_list">
    <!----侧边栏tab---->
    <a rel="51" href="/club/list?country=中超" >
        中超 <span class="hover"></span>
    </a>
    <a rel="8" href="/club/list?country=英超">
        英超 <span class="hover"></span>
    </a>
    <a rel="7" href="/club/list?country=西甲">
        西甲 <span class="hover"></span>
    </a>
    <a rel="9" href="/club/list?country=德甲">
        德甲 <span class="hover"></span>
    </a>
    <a rel="13" href="/club/list?country=意甲">
        意甲 <span class="hover"></span>
    </a>
    <a rel="10" href="/club/list?country=欧冠">
        欧冠 <span class="hover"></span>
    </a>
    <a rel="16" href="/club/list?country=法甲">
        法甲 <span class="hover"></span>
    </a>
    <a rel="148" href="/club/list?country=中甲">
        中甲 <span class="hover"></span>
    </a>
    <a rel="18" href="/club/list?country=欧联">
        欧联 <span class="hover"></span>
    </a>
    <a rel="70" href="/club/list?country=英冠">
        英冠 <span class="hover"></span>
    </a>
    <a href="/club/list?country=荷甲" class="other" style="display:none;">
        荷甲 <span class="hover"></span>
    </a>
    <a href="/club/list?country=葡超" class="other" style="display:none;">
        葡超 <span class="hover"></span>
    </a>
    <a href="/club/list?country=法乙" class="other" style="display:none;">
        法乙 <span class="hover"></span>
    </a>
    <a href="/club/list?country=俄超" class="other" style="display:none;">
        俄超 <span class="hover"></span>
    </a>
    <a href="/club/list?country=土超" class="other" style="display:none;">
        土超 <span class="hover"></span>
    </a>
    <a href="/club/list?country=日职" class="other" style="display:none;">
        日职 <span class="hover"></span>
    </a>
    <a href="/club/list?country=港超" class="other" style="display:none;">
        港超 <span class="hover"></span>
    </a>
    <a href="/club/list?country=k联赛" class="other" style="display:none;">
        K联赛 <span class="hover"></span>
    </a>
    <a href="/club/list?country=阿甲" class="other" style="display:none;">
        阿甲 <span class="hover"></span>
    </a>
    <a href="/club/list?country=巴甲" class="other" style="display:none;">
        巴甲 <span class="hover"></span>
    </a>
    <dl>
        <dt id="other_list">
            <span>展开</span>
            <img src="./image/data_spread.png" alt="">
        </dt>
    </dl>
</div>

<script type="text/javascript">
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
</script>
