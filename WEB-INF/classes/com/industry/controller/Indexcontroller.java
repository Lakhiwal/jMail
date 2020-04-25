package com.industry.controller;

import java.io.IOException;
import java.io.PrintWriter;
import com.industry.controller.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import org.bson.*;

//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.mongodb.*;
import com.mongodb.MongoClient;
import com.mongodb.client.*;
import java.util.*;

//@WebServlet("/Indexcontroller")
public class Indexcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		

		
		String user= request.getParameter("uid");
		String passw = request.getParameter("pass");

		
		if(LoginDao.validate(user, passw))
		{	
			 HttpSession oldSession = request.getSession(false);
	            if (oldSession != null) {
	                oldSession.invalidate();
	            }
	            //generate a new session
	            HttpSession newSession = request.getSession(true);
	            newSession.setAttribute("uname",user);
	            Connection1 conn;
	            String user1=uname.toString();
	            String mongou=user.replace("@gmail.com","");
	            conn=Connection1.count(mongou);
	            long send=conn.s;
	            long rec=conn.r;
	            newSession.setAttribute("sen",send);
	            newSession.setAttribute("rec",rec);
	            //setting session to expiry in 1min0.
	            
	            //retreiving messages
	            MongoClient client=new MongoClient("localhost",27017);
	            MongoDatabase db=client.getDatabase(mongou);
	            MongoCollection<Document> col1=db.getCollection("sent");
	            MongoCollection<Document> col2=db.getCollection("received");
	            FindIterable<Document> itor1=col1.find();
	            FindIterable<Document> itor2=col2.find();
	            Iterator it1=itor1.iterator();
	            Iterator it2=itor2.iterator();
	            ArrayList<String> al1=new ArrayList<String>();
	            ArrayList<String> al2=new ArrayList<String>();
	            String mg1,mg2;
	            while(it1.hasNext())
	            {
	            	mg1=it1.next().toString();
	            	/*out.print("string:");
	            	out.println(mg1);*/

	            	String a1[]=mg1.split("message");
	            	String last=a1[a1.length-1];
	            	last=last.replace("=","");
	            	last=last.replace("}}","");
	            	out.print("last string:");
	            	out.println(last);
	            	al1.add(last);
	            }
	            while(it2.hasNext())
	            {
	            	mg2=it2.next().toString();
	            	/*out.print("string:");
	            	out.println(mg1);*/

	            	String a1[]=mg2.split("message");
	            	String last=a1[a1.length-1];
	            	last=last.replace("=","");
	            	last=last.replace("}}","");
	            	out.print("last string:");
	            	out.println(last);
	            	al2.add(last);
	            }
	            out.println("<h1>al1</h1>");
	            newSession.setAttribute("msg1",al1);
	            newSession.setAttribute("msg2",al2);
	            
	            client.close();
	            
	            Cookie message = new Cookie("message", "Welcome");
	            response.addCookie(message);
	            request.setAttribute("user",user1);
	            response.sendRedirect("ib-test.jsp");
	        }else 
	        {
	        	PrintWriter out2 = response.getWriter();
	        	String err="Sorry no user found! Retry or go to register page";
	        	out2.println("<center>"+err+"</center>");                                                                                                           
	        	RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp"); 
	        	rd.include(request,response);
	    		
	            //PrintWriter out2 = response.getWriter();
	        }
	    }
	} 