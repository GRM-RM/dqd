// 一级tab打点
$(".nav").click(function (event) {
  sa.track('pc_tab_click', {
    tab: $(this).attr('sensors-name'),
    tab_lv: 1,
    tab_parent: 0
  })
  sa.track('pc_index_hot_map', {
    group: 'header_tab',
    name: 'header_tab',
  })
});
$(".pc_count").click(function (event) {
  var url = $(this).attr("href");
  if (url.indexOf("archive/") != -1) {
    var artical_id = url.substring(
      url.indexOf("archive/") + 8,
      url.indexOf(".html"));
  } else if (url.indexOf("video/") != -1) {
    var artical_id = url.substring(url.indexOf("video/") + 6,
      url.indexOf(".html"));
  }
  sa.track('pc_archive_click', {
    group: $(this).attr('map-group'),
    archive_id: artical_id
  })
  sa.track('pc_index_hot_map', {
    group: 'index_news',
    name: 'index_news_list',
  })
});

$('.news_tab').click(function () {
  sa.track('pc_index_hot_map', {
    group: 'index_news',
    name: 'index_news_tab',
    
  })
});

// 注：积分榜热力图打点在首页list标签中  '#rank a' 的点击事件

$('.rank_more').click(function () {
  sa.track('pc_index_hot_map', {
    group: 'index_rank',
    name: 'index_rank_more',
  })
});
$('.stat_list .team_name a').click(function () {
  sa.track('pc_index_hot_map', {
    group: 'index_rank',
    name:'index_rank_list',
  })
});
$('.news_comment').click(function () {
  sa.track('pc_index_hot_map', {
    group: 'index_news_comment',
    name:'index_news_comment',
    
  })
});


// 注：新闻评论点赞 热力图打点在首页 up方法中

$('#show a').click(function () {  
    sa.track('pc_index_hot_map', {
    group: 'index_head_slide',
    name: 'index_head_slide',
  })
})
$('.matchinfo').click(function () {  
    sa.track('pc_index_hot_map', {
    group: 'index_head_matchinfo',
    name: 'index_head_matchinfo',
  })
})