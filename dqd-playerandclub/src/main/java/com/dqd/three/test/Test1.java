package com.dqd.three.test;

import com.dqd.three.TimeUtils;
import com.dqd.three.pojo.Match;

import java.net.Socket;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * A unique of the lion
 *
 * @author grm
 */
public class Test1 {

    public static void main(String[] args) throws Exception{
        Date startTime=new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        long end = sdf.parse(sdf.format(startTime).toString()).getTime() + 3600 * 24 * 1000;
        startTime=sdf.parse(sdf.format(startTime));
        Date endTime=new Date(end);

        System.out.println("aaa");

    }
}
