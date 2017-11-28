package com.dqd.three.service;

import com.dqd.three.dto.PicDTO;
import com.dqd.three.utils.FastDFSClient;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class PicServiceImpl implements PicService {

    //取得配置文件中自定义的内容
    @Value("${pic_url}")
    private String pic_url;

    @Override
    public PicDTO uploadFile(MultipartFile multipartFile) {
        //业务逻辑写在服务层
        PicDTO dto = new PicDTO();
        //判断是否有内容
        if(multipartFile.isEmpty()){
            dto.setError(1);
            dto.setMessage("上传文件不能为空");
        }

        //得到文件的名称
        String originalFilename = multipartFile.getOriginalFilename();
        //得到文件扩展名
        String extName = originalFilename.substring(originalFilename.lastIndexOf(".") + 1);
        //配置文件直接写在表现层
        try {
            FastDFSClient fastDFSClient  = new FastDFSClient("properties/client.conf");
            String[] strings = fastDFSClient.uploadFile(multipartFile.getBytes(), extName);
            //拼接url返回
            String url =pic_url+strings[0]+"/"+strings[1];
            dto.setError(0);
            dto.setUrl(url);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return dto;
    }
}
