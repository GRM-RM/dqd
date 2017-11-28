package com.dqd.three.dto;

import com.dqd.three.pojo.Match;

import java.util.List;

public class MatchDTO {

    private long total;
    private List<Match> rows;

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public List<Match> getRows() {
        return rows;
    }

    public void setRows(List<Match> rows) {
        this.rows = rows;
    }
}
