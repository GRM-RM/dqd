package com.dqd.three.action;

import com.dqd.three.dto.NewsDTO;
import com.dqd.three.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/news")
public class NewsAction {

    @Autowired
    private NewsService newsService;

    @RequestMapping("/{newsPage}")
    @ResponseBody
    public NewsDTO showPage(@PathVariable String newsPage, Integer page, Integer rows){


        if("failList".equals(newsPage)){

            NewsDTO newsList = newsService.findList(1,page,rows);
            return newsList;
        }
            else if ("passList".equals(newsPage)){

                NewsDTO newsList = newsService.findList(2,page,rows);
                 return newsList;
             }
                else if ("rejectList".equals(newsPage)){

                    NewsDTO newsList = newsService.findList(3,page,rows);
                    return newsList;
              }
                    else if ("overdueList".equals(newsPage)){

                        NewsDTO newsList = newsService.findList(0,page,rows);
                        return newsList;
                 }
        return null;
    }

    @RequestMapping("/reject")
    @ResponseBody
    public Map<String,Object> reject(Integer[] ids){

        Map<String,Object> result = new HashMap<>();
        newsService.updateStatus(ids,3);
        result.put("status",200);
        return result;
    }

    @RequestMapping("/overdue")
    @ResponseBody
    public Map<String,Object> overdue(Integer[] ids){

        Map<String,Object> result = new HashMap<>();
        newsService.updateStatus(ids,0);
        result.put("status",200);
        return result;
    }

    @RequestMapping("/pass")
    @ResponseBody
    public Map<String,Object> pass(Integer[] ids){

        Map<String,Object> result = new HashMap<>();
        newsService.updateStatus(ids,2);
        result.put("status",200);
        return result;
    }

}
