package com.dqd.three.service;


import com.dqd.three.dto.ClubDTO;
import com.dqd.three.pojo.Club;

public interface ClubService {

    void addClub(Integer cid,String name);

    ClubDTO findClubList(String country,Integer page,Integer rows);

    void UpdateClub(Integer cid, Club club);

    void delClub(Integer id);

}
