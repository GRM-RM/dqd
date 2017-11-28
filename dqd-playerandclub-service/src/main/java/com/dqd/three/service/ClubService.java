package com.dqd.three.service;

import com.dqd.three.pojo.Club;

import java.util.List;

public interface ClubService {

    List<Club> findByCountry(String country);

}
