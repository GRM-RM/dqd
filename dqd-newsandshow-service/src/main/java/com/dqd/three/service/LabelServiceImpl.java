package com.dqd.three.service;

import com.dqd.three.dao.LabelMapper;
import com.dqd.three.pojo.Label;
import com.dqd.three.pojo.LabelExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LabelServiceImpl implements LabelService {
    @Autowired
    private LabelMapper labelMapper;

    @Override
    public List<Label> selectLabelByNews(int id) {

        return labelMapper.selectByExample(new LabelExample());
    }
}
