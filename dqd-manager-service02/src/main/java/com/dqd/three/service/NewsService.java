package com.dqd.three.service;

import com.dqd.three.dto.NewsDTO;


public interface NewsService {

    NewsDTO findList(Integer status, Integer page, Integer rows);

    void updateStatus(Integer[] ids,Integer status);

}
