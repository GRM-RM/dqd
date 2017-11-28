package com.dqd.three.service;

import com.dqd.three.dao.NewsMapper;
import com.dqd.three.pojo.Label;
import com.dqd.three.pojo.News;
import com.dqd.three.pojo.NewsExample;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {
    @Autowired
    private NewsMapper newsMapper;

    @Override
    public News selectNewsById(int id) {
        return newsMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<News> selectAllNews(int pageIndex) {
        NewsExample example = new NewsExample();
        return newsMapper.selectByExample(example);
    }

    @Override
    public List<News> selectNewsRecently(int num) {
        NewsExample example = new NewsExample();
        NewsExample.Criteria criteria = example.createCriteria();
        criteria.andStatusEqualTo(2);
        example.setOrderByClause("create_time desc");
        PageHelper.startPage(1, num);
        List<News> list = newsMapper.selectByExample(example);
        return list;
    }

    @Override
    public List<News> selectNewsRelated(int num, Integer labelId, int id) {
        NewsExample example = new NewsExample();
        NewsExample.Criteria criteria = example.createCriteria();
        criteria.andLabelIdEqualTo(labelId);
        criteria.andIdNotEqualTo(id);
        PageHelper.startPage(1, num);
        List<News> list = newsMapper.selectByExample(example);
        return list;
    }

    @Override
    public PageInfo<News> selectNewsByLabel(int pageIndex, int num, Integer labelId) {
        PageHelper.startPage(pageIndex, num);
        NewsExample example = new NewsExample();
        NewsExample.Criteria criteria = example.createCriteria();
        criteria.andStatusEqualTo(2);
        if (labelId != 0) {
            criteria.andLabelIdEqualTo(labelId);
        }
        example.setOrderByClause("create_time desc");
        List<News> list = newsMapper.selectByExample(example);
        PageInfo<News> pageInfo = new PageInfo<News>(list, 5);
        return pageInfo;
    }



}
