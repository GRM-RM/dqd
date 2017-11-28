package com.dqd.three.service;

import com.dqd.three.dto.PicDTO;
import org.springframework.web.multipart.MultipartFile;

public interface PicService {

    PicDTO uploadFile(MultipartFile multipartFile);
}
