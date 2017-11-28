package com.dqd.three.action;

import com.dqd.three.dao.CommentMapper;
import com.dqd.three.dto.CommentDTO;
import com.dqd.three.pojo.Comment;
import com.dqd.three.pojo.CommentExample;
import com.dqd.three.pojo.News;
import com.dqd.three.service.CommentService;
import com.dqd.three.service.NewsService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class test {
    @Autowired
    private NewsService newsService;
    @Autowired
    private CommentService commentService;
    @Autowired
    private CommentMapper commentMapper;

    @RequestMapping("/daohang")
    @ResponseBody
    public Object daohang(Integer num) {
        return newsService.selectNewsRecently(num);
    }

    @RequestMapping("/get/{id}")
    @ResponseBody
    public Object getNewsById(@PathVariable Integer id) {
        return newsService.selectNewsById(id);
    }

    @RequestMapping("/test01")
    @ResponseBody
    public List<News> test01() {
        List<News> list = new ArrayList<>();
        News news1 = new News();
        news1.setAuthor("aasjio");
        News news2 = new News();
        news2.setAuthor("djfal");
        list.add(news1);
        list.add(news2);
        return list;
    }

    @RequestMapping("/photo")
    public String photo(String url, Model model, HttpServletRequest request) {
        request.getSession().setAttribute("url", url);
        return "test";
    }

    @RequestMapping("/commentTest")
    @ResponseBody
    public PageInfo<CommentDTO> comments() {

        return commentService.listComment(1, 2);
    }
}
