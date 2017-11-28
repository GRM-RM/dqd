package com.dqd.three.service;

import com.dqd.three.pojo.Label;
import com.dqd.three.pojo.News;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface NewsService {

    News selectNewsById(int id);

    List<News> selectAllNews(int pageIndex);

    List<News> selectNewsRecently(int num);

    List<News> selectNewsRelated(int num, Integer labelId, int id);

    PageInfo<News> selectNewsByLabel(int pageIndex, int num, Integer labelId);

}
