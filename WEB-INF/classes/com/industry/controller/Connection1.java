package com.industry.controller;

import com.mongodb.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Connection1
{
	long r,s;
	public static String removeWord(String string) 
    {
        String dummy="";
        char z[]=string.toCharArray();
        System.out.println(string);
        int i=0;
        
        while(z[i]!='@')
        {
            dummy=dummy+Character.toString(z[i]);
            System.out.println(z[i]);
            i++;
        }
        return dummy;
    }
	
	public static Connection1 count(String user)
	{
		MongoClient mongo=new MongoClient("localhost",27017);
		Connection1 con=new Connection1();
		DB dbu=mongo.getDB(user);
		long count_s=dbu.getCollection("sent").count();
		long count_r=dbu.getCollection("received").count();
		con.r=count_r;
		con.s=count_s;
		//String count=count_s+"#"+count_r;
		mongo.close();
		return con;
	}
	
}