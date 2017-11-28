package com.dqd.three.service;

import com.dqd.three.dto.LabelDTO;
import com.dqd.three.pojo.Label;

import java.util.List;

public interface LabelService {

    List<LabelDTO> getLabelList(Long _id);

    Label findLabelById(Integer id);

    List<LabelDTO> getLabelClubList();
}
