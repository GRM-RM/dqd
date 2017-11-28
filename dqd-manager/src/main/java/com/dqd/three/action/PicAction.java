package com.dqd.three.action;

import com.dqd.three.dto.PicDTO;
import com.dqd.three.service.PicService;
import com.dqd.three.utils.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 * Thanks for Everything.
 */
@Controller
public class PicAction {

	//注入服务层
	@Autowired
	private PicService picService;

	@RequestMapping(value = "/pic/upload",produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String uploadImg(@RequestParam(name = "uploadFile") MultipartFile multipartFile){
		PicDTO picDTO = picService.uploadFile(multipartFile);
		//插件兼容，最好的方式就是字符串
		//可以把DTO转为字符串的JSON形式
		String toJson = JsonUtils.objectToJson(picDTO);
		//注意响应的编码
		return toJson;
	}

}
