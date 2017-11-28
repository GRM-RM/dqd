package com.dqd.three.service;

import com.dqd.three.dao.NewsMapper;
import com.dqd.three.dto.NewsDTO;
import com.dqd.three.pojo.News;
import com.dqd.three.pojo.NewsExample;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsMapper newsMapper;


    @Override
    public NewsDTO findList(Integer status,Integer page,Integer rows) {

        PageHelper.startPage(page,rows);

        NewsExample example = new NewsExample();
        NewsExample.Criteria criteria = example.createCriteria();

        criteria.andStatusEqualTo(status);

        List<News> newsList = newsMapper.selectByExample(example);
        PageInfo<News> newsPageInfo = new PageInfo<News>(newsList);

        //总记录数
        long total = newsPageInfo.getTotal();
        NewsDTO newsDTO = new NewsDTO();
        newsDTO.setTotal(total);
        newsDTO.setRows(newsList);

        return newsDTO;
    }

    @Override
    public void updateStatus(Integer[] ids,Integer status) {

        for (Integer id : ids) {
            News news = findNewsById(id);
            news.setStatus(status);
            newsMapper.updateByPrimaryKey(news);
        }


    }

    public News findNewsById(Integer id){

        News news = newsMapper.selectByPrimaryKey(id);
        return news;
    }

}
