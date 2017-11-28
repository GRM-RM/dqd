package com.dqd.three.action;

import com.dqd.three.dto.CommentDTO;
import com.dqd.three.pojo.Comment;
import com.dqd.three.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/comment")
public class CommentAction {

    @Autowired
    private CommentService commentService;

    @RequestMapping("/commentList")
    @ResponseBody
    public CommentDTO findCommentList(Integer page, Integer rows){

        CommentDTO commentList = commentService.findCommentList(page, rows);
        return commentList;
    }

    @RequestMapping("/commentEdit")
    public String goPlayerEdit(){

        return "/comment/commentEdit";
    }

    @RequestMapping("/commentUpdate")
    @ResponseBody
    public Map<String,Object> commentEdit(Comment comment,String createTime01){

        if (createTime01 != null && createTime01 != ""){

            comment.setCreatedTime(createTime01);
        }
        Map<String,Object> result = new HashMap<>();
        commentService.updateComment(comment);
        result.put("status",200);
        return result;
    }

    @RequestMapping("/commentDel")
    @ResponseBody
    public Map<String,Object> commentDel(Integer[] ids){

        Map<String,Object> result = new HashMap<>();

        for (Integer id : ids) {
            commentService.deleteComment(id);
        }

        result.put("status",200);
        return result;
    }

}
