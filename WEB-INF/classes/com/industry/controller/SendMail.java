package com.industry.controller;

import com.mongodb.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.*;

public class SendMail extends HttpServlet
{
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

    Exception e1;
    String test1;
    String test2;
	
	public void sendMessage(String uid1, String uid2, String msg, String rmail, String umail)
	{
		try
		{
			String rnmail=removeWord(rmail);
			String unmail=removeWord(umail);
			test1=rnmail;
			test2=unmail;
			MongoClient mongo=new MongoClient("localhost",27017);
			DB dbu=mongo.getDB(unmail);
			DB dbr=mongo.getDB(rnmail);
			DBCollection collection=dbu.getCollection("sent");
			BasicDBObject obj=new BasicDBObject();
			obj.put("time", new java.util.Date());
			obj.put("radd", rmail);
			obj.put("user", uid1);
			obj.put("message", msg);
			collection.insert(obj);
			collection=dbr.getCollection("received");
			BasicDBObject obj2=new BasicDBObject();
			obj2.put("time", new java.util.Date());
			obj2.put("sadd", umail);
			obj2.put("user", uid2);
			obj2.put("message", msg);
			collection.insert(obj2);
			mongo.close();
		}
		catch(Exception e)
		{
			e1=e;
		}
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException
	{
		HttpSession session=request.getSession();
		String rmail=(String)request.getParameter("r-email");
    	String umail=(String)session.getAttribute("uname");
	
		PrintWriter out=response.getWriter();
		RequestDispatcher rd=request.getRequestDispatcher("inbox.jsp");
		try
		{
			boolean status=false;
			
			String msg=request.getParameter("message");
			String url="jdbc:mysql://localhost:3306/project";
			Connection con=DriverManager.getConnection(url,"root","2511");
            String query1="select * from login where email=?";
			String query2="select uname from registration where email=?";
			PreparedStatement ps=con.prepareStatement(query1);
                        PreparedStatement ps2=con.prepareStatement(query2);
                        PreparedStatement ps3=con.prepareStatement(query2);
                        ps.setString(1,rmail);
                        ps2.setString(1,umail);
                        ps3.setString(1,rmail);
                        //out.println(rmail+" "+umail+" "+msg);
                        //out.println("<br>"+test1+" "+test2+"<br>");
                        ResultSet rs1=ps.executeQuery();
                        ResultSet rs2=ps2.executeQuery();
                        ResultSet rs3=ps3.executeQuery();
                        rs2.next();
                        rs3.next();
                        String uid1=rs2.getString(1);
                        String uid2=rs3.getString(1);
                        //out.println(uid1+" "+uid2);

			status=rs1.next();
			if(status==false)
			{
				response.sendRedirect("UserNotFound.html");
			}
			else
			{
				sendMessage(uid1,uid2,msg,rmail,umail);
				//out.println("mongodb ka exception"+e1);
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('message sent successfully');");  
				out.println("</script>");
				//rd.include(request,response);
				response.sendRedirect("inbox.jsp");
			
			
			}
		}
		catch(Exception e)
		{
			out.println("mysql ka exception"+e);
		}
		

	}
}