package com.dqd.three.service;

import com.dqd.three.pojo.Label;

import java.util.List;

public interface LabelService {

    List<Label> selectLabelByNews(int id);
}
