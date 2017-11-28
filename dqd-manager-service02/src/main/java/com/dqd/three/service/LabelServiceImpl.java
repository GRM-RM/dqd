package com.dqd.three.service;

import com.dqd.three.dao.ClubMapper;
import com.dqd.three.dao.LabelMapper;
import com.dqd.three.dto.LabelDTO;
import com.dqd.three.pojo.Club;
import com.dqd.three.pojo.ClubExample;
import com.dqd.three.pojo.Label;
import com.dqd.three.pojo.LabelExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class LabelServiceImpl implements LabelService {

    @Autowired
    private LabelMapper labelMapper;

    @Autowired
    private ClubMapper clubMapper;

    @Override
    public List<LabelDTO> getLabelList(Long _id) {

        Integer id = (int)_id.longValue();

        List<Label> labelList = labelMapper.selectByExample(new LabelExample());
        List<LabelDTO> labelDTOList = new ArrayList<>();

        for (Label label : labelList) {

            LabelDTO labelDTO = new LabelDTO();
            labelDTO.setId(label.getId());
            labelDTO.setText(label.getName());
            labelDTO.setState("close");
            labelDTOList.add(labelDTO);
        }

        return labelDTOList;
    }

    @Override
    public Label findLabelById(Integer id) {

        return  labelMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<LabelDTO> getLabelClubList() {


        List<Label> labelList = labelMapper.selectByExample(new LabelExample());
        List<LabelDTO> labelDTOList = new ArrayList<>();

        for (Label label : labelList) {

            ClubExample example = new ClubExample();
            ClubExample.Criteria criteria = example.createCriteria();

            criteria.andCountryLike("%"+label.getName()+"%");
            List<Club> clubList = clubMapper.selectByExample(example);

            LabelDTO labelDTO = new LabelDTO();
            labelDTO.setId(label.getId());
            labelDTO.setText(label.getName());
            labelDTO.setState("close");
            labelDTOList.add(labelDTO);

            for (Club club : clubList) {

                LabelDTO labelDTO2 = new LabelDTO();
                labelDTO2.setId(club.getId());
                labelDTO2.setText(club.getName());
                labelDTO2.setState("open");
                labelDTOList.add(labelDTO2);
            }
        }

        return labelDTOList;

    }
}
