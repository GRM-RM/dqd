package com.dqd.three.dto;

import com.dqd.three.pojo.Club;

import java.util.List;

public class ClubDTO {

    private long total;
    private List<Club> rows;

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public List<Club> getRows() {
        return rows;
    }

    public void setRows(List<Club> rows) {
        this.rows = rows;
    }
}
