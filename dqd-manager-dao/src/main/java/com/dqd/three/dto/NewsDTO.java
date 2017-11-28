package com.dqd.three.dto;

import com.dqd.three.pojo.News;

import java.util.List;

public class NewsDTO {

    private long total;
    private List<News> rows;

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public List<News> getRows() {
        return rows;
    }

    public void setRows(List<News> rows) {
        this.rows = rows;
    }
}
