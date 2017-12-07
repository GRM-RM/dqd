package com.dqd.three.service;

import com.dqd.three.dao.CommentMapper;
import com.dqd.three.dao.UserMapper;
import com.dqd.three.dto.CommentDTO;
import com.dqd.three.pojo.Comment;
import com.dqd.three.pojo.CommentExample;
import com.dqd.three.pojo.User;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author grm
 */
@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentMapper commentMapper;
    @Autowired
    private UserMapper userMapper;

    @Override
    public void addComment(Comment comment) {
        comment.setCreatedTime(new Date());
        commentMapper.insert(comment);
    }

    @Override
    public PageInfo<CommentDTO> listComment(Integer page, Integer newsId) {
        PageHelper.startPage(page, 2);
        CommentExample example = new CommentExample();
        CommentExample.Criteria criteria = example.createCriteria();
        criteria.andNewsIdEqualTo(newsId);
        example.setOrderByClause("created_time desc");
        List<Comment> list = commentMapper.selectByExample(example);
        PageInfo<Comment> pageInfo1 = new PageInfo<>(list,5);

        PageInfo<CommentDTO> pageInfo = new PageInfo<CommentDTO>();
        BeanUtils.copyProperties(pageInfo1, pageInfo);

        List<CommentDTO> dtoList = new ArrayList<CommentDTO>();
        comToDTO(list, dtoList);

        pageInfo.setList(dtoList);

        return pageInfo;
    }

    @Override
    public List<CommentDTO> listHotComment(Integer newsId, Integer num) {
        PageHelper.startPage(1, num);
        CommentExample example = new CommentExample();
        example.setOrderByClause("likes desc");
        CommentExample.Criteria criteria = example.createCriteria();
        criteria.andNewsIdEqualTo(newsId);
        List<Comment> list = commentMapper.selectByExample(example);
        List<CommentDTO> dtoList = new ArrayList<CommentDTO>();
        comToDTO(list, dtoList);

        return dtoList;
    }

    @Override
    public void reComment(Comment comment) {
        CommentExample example = new CommentExample();
        CommentExample.Criteria criteria = example.createCriteria();
        criteria.andIdEqualTo(comment.getId());
        commentMapper.updateByExample(comment, example);
    }

    @Override
    public Comment selectCommentById(Integer id) {
        return commentMapper.selectByPrimaryKey(id);
    }

    private void comToDTO(List<Comment> list, List<CommentDTO> dtoList) {

        for (Comment comment : list) {
            CommentDTO dto = new CommentDTO();
            BeanUtils.copyProperties(comment, dto);
            dto.setUser(userMapper.selectByPrimaryKey(comment.getUserId()));
            dtoList.add(dto);
        }
    }
}
