package com.dqd.three.service;

import com.dqd.three.dao.ClubMapper;
import com.dqd.three.dao.LabelMapper;
import com.dqd.three.dto.ClubDTO;
import com.dqd.three.pojo.Club;
import com.dqd.three.pojo.ClubExample;
import com.dqd.three.pojo.Label;
import com.dqd.three.pojo.LabelExample;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClubServiceImpl implements ClubService {

    @Autowired
    private ClubMapper clubMapper;

    @Autowired
    private LabelService labelService;


    @Override
    public void addClub(Integer cid,String name) {

        Label label = labelService.findLabelById(cid);

       Club club = new Club();
       club.setCountry(label.getName());
       club.setName(name);

       clubMapper.insert(club);
    }

    @Override
    public ClubDTO findClubList(String country, Integer page, Integer rows) {

        PageHelper.startPage(page,rows);

        ClubExample example = new ClubExample();
        ClubExample.Criteria criteria = example.createCriteria();
        criteria.andCountryLike("%"+country+"%");
        example.setOrderByClause("scores desc");

        List<Club> clubList = clubMapper.selectByExample(example);
        PageInfo<Club> clubPageInfo = new PageInfo<Club>(clubList);
        long total = clubPageInfo.getTotal();

        ClubDTO clubDTO = new ClubDTO();
        clubDTO.setTotal(total);
        clubDTO.setRows(clubList);

        return clubDTO;
    }

    @Override
    public void UpdateClub(Integer cid, Club club) {

        if (cid != null){

            Label label = labelService.findLabelById(cid);
            club.setCountry(label.getName());
        }


        clubMapper.updateByPrimaryKey(club);

    }

    @Override
    public void delClub(Integer id) {

        clubMapper.deleteByPrimaryKey(id);
    }


}
