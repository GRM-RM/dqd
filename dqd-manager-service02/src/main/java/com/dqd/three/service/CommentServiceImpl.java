package com.dqd.three.service;

import com.dqd.three.dao.CommentMapper;
import com.dqd.three.dao.NewsMapper;
import com.dqd.three.dao.UserMapper;
import com.dqd.three.dto.CommentDTO;
import com.dqd.three.pojo.Comment;
import com.dqd.three.pojo.CommentExample;
import com.dqd.three.pojo.News;
import com.dqd.three.pojo.User;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentMapper commentMapper;
    @Autowired
    private NewsMapper newsMapper;
    @Autowired
    private UserMapper userMapper;

    @Override
    public CommentDTO findCommentList(Integer page, Integer rows) {


        PageHelper.startPage(page,rows);
        List<Comment> commentList = commentMapper.selectByExample(new CommentExample());
        PageInfo<Comment> pageInfo = new PageInfo<>(commentList);

        for (Comment comment : commentList) {

            User user = userMapper.selectByPrimaryKey(comment.getUserId());
            comment.setUserName(user.getUsername());

            News news = newsMapper.selectByPrimaryKey(comment.getNewsId());
            comment.setNewsName(news.getTitle());
        }

        CommentDTO commentDTO = new CommentDTO();
        commentDTO.setTotal(pageInfo.getTotal());
        commentDTO.setRows(commentList);

        return commentDTO;
    }

    @Override
    public void updateComment(Comment comment) {

        commentMapper.updateByPrimaryKey(comment);
    }

    @Override
    public void deleteComment(Integer id) {

        commentMapper.deleteByPrimaryKey(id);
    }
}
