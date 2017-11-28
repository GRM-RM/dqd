package com.dqd.three.action;

import com.dqd.three.dto.CommentDTO;
import com.dqd.three.pojo.Comment;
import com.dqd.three.pojo.Label;
import com.dqd.three.pojo.News;
import com.dqd.three.pojo.User;
import com.dqd.three.service.CommentService;
import com.dqd.three.service.LabelService;
import com.dqd.three.service.NewsService;
import com.dqd.three.utils.Constant;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class NewsAction {
    @Autowired
    private NewsService newsService;
    @Autowired
    private LabelService labelService;
    @Autowired
    private CommentService commentService;

    @RequestMapping("/")
    public String index(Model model, HttpServletRequest request) {
        List<News> list = newsService.selectNewsRecently(5);
        model.addAttribute(Constant.NEWS_TOP_LIST, list);
        PageInfo<News> pageInfo = newsService.selectNewsByLabel(1, 2, 0);
        model.addAttribute(Constant.NEWS_LIST, pageInfo.getList());
        model.addAttribute(Constant.NEWS_PAGE, pageInfo);
        model.addAttribute(Constant.NEWS_LABEL_ID, "0");

        User user = new User();
        user.setId(2);
        user.setUsername("哈哈2");
        user.setAvatar("http://localhost:8080/upload/804.png");
//        User user = null;
        request.setAttribute(Constant.USER_SESSION, user);

        return "index";
    }

    @RequestMapping("/news_list")
    public String news_list(@RequestParam(required = false, defaultValue = "1") Integer pageIndex,
                            @RequestParam(required = false, defaultValue = "0") Integer labelId, Model model, HttpServletRequest request) {
        List<News> list = newsService.selectNewsRecently(5);
        model.addAttribute(Constant.NEWS_TOP_LIST, list);
        PageInfo<News> pageInfo = newsService.selectNewsByLabel(pageIndex, 2, labelId);
        pageInfo.setPageNum(5);
        model.addAttribute(Constant.NEWS_LIST, pageInfo.getList());
        model.addAttribute(Constant.NEWS_PAGE, pageInfo);
        model.addAttribute(Constant.NEWS_LABEL_ID, labelId);

        User user = new User();
        user.setId(2);
        user.setUsername("哈哈2");
        user.setAvatar("http://localhost:8080/upload/804.png");
//        User user = null;
        request.setAttribute(Constant.USER_SESSION, user);

        return "index";
    }

    @RequestMapping("/news_detail")
    public String news_detail(Integer id, Model model, HttpServletRequest request) {
        News news = newsService.selectNewsById(id);
        model.addAttribute(Constant.NEWS_DETAIL, news);

        List<News> newsRelatedList = newsService.selectNewsRelated(10, news.getLabelId(), id);
        model.addAttribute(Constant.NEWS_RELATED_LIST, newsRelatedList);

        List<Label> labelList = labelService.selectLabelByNews(news.getLabelId());
        model.addAttribute(Constant.LABEL_RELATED_LIST, labelList);

        List<CommentDTO> commentList = commentService.listHotComment(id, 5);
        model.addAttribute(Constant.COMMENT_HOT_LIST, commentList);

        User user = new User();
        user.setId(2);
        user.setUsername("哈哈2");
        user.setAvatar("http://localhost:8080/upload/804.png");
//        User user = null;
        request.setAttribute(Constant.USER_SESSION, user);

        return "news_detail";
    }
}
