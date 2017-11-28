package com.dqd.three.service;

import com.dqd.three.dto.CommentDTO;
import com.dqd.three.pojo.Comment;

public interface CommentService {

    CommentDTO findCommentList(Integer page, Integer rows);

    void updateComment(Comment comment);

    void deleteComment(Integer id);
}
