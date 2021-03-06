var timeOffset = getLocalTime();//获取当前时区
function getLocalTime(){
	var d = new Date()
	var gmtHours = d.getTimezoneOffset()/60;
	return gmtHours;
}

$(function(){
	// $('iframe,video,embed').click(function(event){
	// 	var src = $(this).attr('src');
	// 	if(src){
	// 		myWindow=window.open(src,'','width=400,height=400')
	// 		myWindow.focus()
	// 	}
	// 	event.stopPropagation()
	// 	return false
	// })
	// $('iframe,embed').each(function(){
	// 	var src = $(this).attr('src');
	// 	var srcs = encodeURIComponent(src)
	// 	$(this).wrap('<div class="maskVideo" rel="'+src+'"></div>')
	// 	$(this).css('pointer-events','none');
	// 	$('.maskVideo').click(function(){
	// 		var srcs = $(this).attr('rel')
	// 		myWindow=window.open(srcs,'','width=400,height=400')
	// 		myWindow.focus()
	// 	})
	//
	// })
	$('.detail div.video').each(function(){
		var back = $(this).attr('thumb');
		var backgrounds = 'url('+back+') center center no-repeat rgba(0,0,0,0.7)'
		$(this).css({
			'background':backgrounds,
			'backgroundSize': '100% auto'
		})
		var src = $(this).attr('src');
		var icon = $('<a href="'+src+'" target="_blank" class="icon_play"></a>');
		$(this).append(icon)
	})
	// $('.video').click(function(){
	// 	var src = $(this).attr('src');
	// 	myWindow=window.open(src,'','width=400,height=400')
	// 	 myWindow.focus()
	// })
	checkHover();//检查头部选中样式
	checkSe();//检查页面来源
	$('#ctr').delegate('.icon_qr','mouseenter',function(){
		$('#ctr').find('.code').fadeIn();
	}).delegate('.icon_qr','mouseout',function(){
		$('#ctr').find('.code').fadeOut();
	});
	//弹窗控制
	$('#pop').delegate('a.close','click',function(){
		maskHide();
		return false;
	});
	$('#pop').delegate('a.btn','click',function(){
		maskHide();
		if(!$(this).hasClass('login')){
			return false;
		}
	})
	//首页轮播图控制
	$('#cur').delegate('a','click',function(){
           $('#cur a').removeClass('cur');
	       $(this).addClass('cur');
           var cur = $(this).index();

           showCur = cur;
           $('#show ul').animate({
                 marginLeft:-showCur*640
            },500);
    });
    $('#show').delegate('a.arrow_l','click',function(){
    			 showCur -=1;
                if(showCur <0){
                    showCur = 4;
                }
    			 $('#show ul').animate({
                 marginLeft:-showCur*640
            },500);
            $('#cur a').removeClass('cur');

            $('#cur').find('a').eq(showCur).addClass('cur');
    })
    $('#show').delegate('a.arrow_r','click',function(){
    			 showCur +=1;
                if(showCur >4){
                    showCur = 0;
                }
    			 $('#show ul').animate({
                 marginLeft:-showCur*640
            },500);
            $('#cur a').removeClass('cur');

            $('#cur').find('a').eq(showCur).addClass('cur');
    })
    $('#show').hover(function(){
         window.clearInterval(imgAuto);

    },function(){
          window.imgAuto = window.setInterval(function(){

                //imgShow()

           },5000)
    })
	//视频页轮播图控制
	$('#vList').delegate('dd','mouseenter',function(){
            $('#vList dd').removeClass('cur');
	       $(this).addClass('cur');
           var cur = $(this).index() -1;

           showCur = cur;
           $('#vShow ul').css({
                 marginLeft:-showCur*640
            });
    });
    $('#top').hover(function(){
         window.clearInterval(imgAuto);
    },function(){
          imgAuto = window.setInterval(function(){

                imgShow()
           },5000)
    })
    $('#mask_app').delegate('a.close','click',function(){
    		$('#mask_app').hide();
    		return false
    })

})
var checkSe = function(){
	var r = document.referrer;
	r = r.toLowerCase();
	var aSites = ['google.','baidu.','soso.','so.','360.','yahoo.','youdao.','sogou.','gougou.','haosou.','qq.','qihoo.'];
	var loc = location.href;
	if (loc.match(/article/)) {
		for (var i= 0; i< aSites.length;i++){
			if (r.indexOf(aSites[i]) > 0){
				var html = '<div id="mask_app">'+
            					'<a href="#" class="close"></a>'+
            					'<img src="/web/images/qr_down.png" alt="" />'+
        						'</div>'
				$('body').append(html);
				break;
			}
		}

	}
}
var maskShow = function(error){
	//var scrollHeight = $('body').scrollTop();
	if(error === 'unlogin'){
		$('#pop').find('h3').text('您尚未登录');
		$('#pop').find('p').text('请登录后继续此操作');
		$('#pop').find('a.btn').text('立即登录').attr('href','/user/login').addClass('login');
	}else{
		$('#pop').find('h3').text('非常抱歉');
		$('#pop').find('p').text(error)
		$('#pop').find('a.btn').text('我知道了');
	};
	$('#mask').show();
	//$('body').css('overflow','hidden')
}
var maskHide = function(error){
	$('#mask').hide();
	//$('body').css('overflow','auto')
}
var blinkShow = function(msg){
	var scrollHeight = $('body').scrollTop();
	$('#popUp').find('p').text(msg)

	$('#blink').css('top',scrollHeight).show();
	window.setTimeout(function(){
		$('#blink').hide()
	},2000)

}
var showCur = 0;

function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]);
    return null;
}

var imgShow = function () {
	if($('#cur').length){
	    $('#cur a').removeClass('cur');
	    $('#cur a').eq(showCur).addClass('cur');
	    $('#show ul').animate({
	        marginLeft: -showCur * 640
	    }, 1000);
	    if (showCur <= 3) {
	        showCur += 1;
	    } else {
	        showCur = 0;
	    }

	}else if($('#vList').length){
		$('#vList dd').removeClass('cur');
	    $('#vList dd').eq(showCur).addClass('cur');
	    $('#vShow ul').animate({
	        marginLeft: -showCur * 640
	    }, 1000);
	    if (showCur <= 3) {
	        showCur += 1;
	    } else {
	        showCur = 0;
	    }

	}else{
		return false;
	}
}

var imgAuto = window.setInterval(function () {
    imgShow();
}, 5000);
var checkHover = function(){
	var loc = location.href;

	if(loc.match(/group/)){//圈子页面
		$('#header').find('a.nav').eq(2).addClass('nav_hover')
	}else if(loc.match(/video/)){//视频页面
		$('#header').find('a.nav').eq(2).addClass('nav_hover')
	}else if(loc.match(/app/)){//下载页面
		$('#header').find('a.nav').eq(4).addClass('nav_hover')
	}else if(loc.match(/match/)){//比赛页面
		$('#header').find('a.nav').eq(1).addClass('nav_hover')
	}else if(loc.match(/data/)){//数据页面
		$('#header').find('a.nav').eq(3).addClass('nav_hover')
	}else if(loc.match(/article/)){

	}else if(loc.match(/special/)){

	}else if(loc.match(/user/)){

	}else{
		$('#header').find('a.nav').eq(0).addClass('nav_hover')
	}
}

var checkBrowser = function(){
	var userAgent=navigator.userAgent.toLowerCase(),
	s, o = {};

	var browser = navigator.appName
	var b_version = navigator.appVersion
	var version = b_version.split(";");
	if(version.length>1){
		var trim_Version = version[1].replace(/[ ]/g,"");
	}else{
		return false
	}

	if(browser=="Microsoft Internet Explorer" && trim_Version=="MSIE6.0") {
	 	maskShow('您的浏览器版本过低，请升级浏览器已获得更好的浏览效果！')
	}
	else if(browser=="Microsoft Internet Explorer" && trim_Version=="MSIE7.0") {
		maskShow('您的浏览器版本过低，请升级浏览器已获得更好的浏览效果！')
	}
}
