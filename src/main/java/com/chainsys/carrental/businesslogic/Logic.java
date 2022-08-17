package com.chainsys.carrental.businesslogic;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Logic {
	private Logic() {
		
	}
	public static Date getInstanceDate() {
        Calendar vcalendar=Calendar.getInstance();
        String dates =  vcalendar.get(Calendar.DATE) + "/" + (vcalendar.get(Calendar.MONTH)+1) + "/" + vcalendar.get(Calendar.YEAR);
        SimpleDateFormat dateFormat=new SimpleDateFormat("dd/MM/yyyy");
        Date date=null;
        try {
            date=new java.sql.Date(dateFormat.parse(dates).getTime());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }
	public static int getPayElapsed(Date dueDate) {
		Date currentDate=getInstanceDate();
		long dayElapse=(currentDate.getTime()-dueDate.getTime())/(1000*60*60*24);
		return (int)dayElapse;
	}
	public static int getDaysDifferent(Date fromDate,Date toDate) {
		long dayDiffer=(toDate.getTime()-fromDate.getTime())/(1000*60*60*24);
		return (int)dayDiffer;
	}
	public static float getTotalFees(int dayDiffer,int dayElapse) {
		return ((dayDiffer*1000)+(dayElapse*500));
	}
}
