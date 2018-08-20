package org.great.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Time
{
	
	public static String getDate(){
		SimpleDateFormat dateFormat=new SimpleDateFormat(("yyyy-MM-dd"));
		return dateFormat.format(new Date());
	}
	public static String getTime(){
		SimpleDateFormat dateFormat=new SimpleDateFormat(("yyyy-MM-dd HH:mm:ss"));
		return dateFormat.format(new Date());
	}
}
