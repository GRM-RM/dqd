package com.dqd.three;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * A unique of the lion
 *
 * @author grm
 */
public class TimeUtils {
    public static void getOneDay(Date startTime,Date endTime) throws Exception{
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");

        long end=sdf.parse(sdf.format(startTime).toString()).getTime()+3600*24*1000;
        System.out.println(sdf.format(startTime));

        System.out.println(sdf.format(new Date(end)));
    }
}
