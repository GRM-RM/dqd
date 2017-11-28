package com.dqd.three.dto;

import com.dqd.three.pojo.Club;
import com.dqd.three.pojo.Player;

import java.util.List;

public class PlayerDTO {

    private long total;
    private List<Player> rows;

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public List<Player> getRows() {
        return rows;
    }

    public void setRows(List<Player> rows) {
        this.rows = rows;
    }
}
