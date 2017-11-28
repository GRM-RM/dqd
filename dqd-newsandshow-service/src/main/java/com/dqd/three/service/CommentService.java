package com.dqd.three.service;

import com.dqd.three.dto.CommentDTO;
import com.dqd.three.pojo.Comment;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface CommentService {

    void addComment(Comment comment);

    PageInfo<CommentDTO> listComment(Integer page, Integer newsId);

    List<CommentDTO> listHotComment(Integer newsId, Integer num);

    void reComment(Comment comment);

    Comment selectCommentById(Integer id);
}
