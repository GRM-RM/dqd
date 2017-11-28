package com.dqd.three.action;

import com.dqd.three.dto.CommentDTO;
import com.dqd.three.pojo.Comment;
import com.dqd.three.service.CommentService;
import com.dqd.three.service.UserService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/comment")
public class CommentAction {
    @Autowired
    private CommentService commentService;
    @Autowired
    private UserService userService;

    @RequestMapping("/add")
    @ResponseBody
    public Map<String, Object> commentAdd(Comment comment) {
        Map<String, Object> map = new HashMap<String, Object>();
        if (comment.getUserId() == null || comment.getContent() == null || "".equals(comment.getContent().trim())) {
            map.put("errCode", 401);
            map.put("errMsg", "评论失败！");
            map.put("status", 401);
        } else {
            comment.setLikes(0);
            comment.setStatus(0);
            commentService.addComment(comment);
        }
        return map;
    }

    @RequestMapping("/list")
    @ResponseBody
    public Map<String, Object> list(@RequestParam(required = false, defaultValue = "1") Integer page, String newsId) {

        PageInfo<CommentDTO> pageInfo = commentService.listComment(page, Integer.parseInt(newsId));

        Map<String, Object> map = new HashMap<String, Object>(4);
        map.put("data", pageInfo.getList());
        map.put("comment_total_num", pageInfo.getTotal());
        map.put("news_detail_page", pageInfo);
        map.put("news_id", newsId);

        return map;
    }

    @RequestMapping("/recomment")
    @ResponseBody
    public Map<String, Object> reComment(Integer id) {
        Map<String, Object> map = new HashMap<String, Object>();

        Comment comment = commentService.selectCommentById(id);
        comment.setLikes(comment.getLikes() + 1);
        commentService.reComment(comment);

        map.put("zanNum", comment.getLikes());
        return map;
    }
}
