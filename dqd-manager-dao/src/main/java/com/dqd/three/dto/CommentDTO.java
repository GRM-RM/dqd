package com.dqd.three.dto;

import com.dqd.three.pojo.Comment;
import com.dqd.three.pojo.Player;

import java.util.List;

public class CommentDTO {

    private long total;
    private List<Comment> rows;

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public List<Comment> getRows() {
        return rows;
    }

    public void setRows(List<Comment> rows) {
        this.rows = rows;
    }
}
