package com.dqd.three.action;

import com.dqd.three.dto.LabelDTO;
import com.dqd.three.service.LabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/label")
public class LabelAction {

    @Autowired
    private LabelService labelService;

    @RequestMapping("/list")
    @ResponseBody
    public List<LabelDTO> labelDTOList(@RequestParam(defaultValue = "0") Long id){

        List<LabelDTO> labelDTOList = labelService.getLabelList(id);
        return labelDTOList;
    }

    @RequestMapping("/club/list")
    @ResponseBody
    public List<LabelDTO> labelClubDTOList(@RequestParam(defaultValue = "0") Long id){

       List<LabelDTO> labelDTOList = labelService.getLabelClubList();

        return labelDTOList;
    }
}
