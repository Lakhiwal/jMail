package com.industry.controller;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.net.*;
import java.util.*;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;
import com.mongodb.MongoException;

public class Registercontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Registercontroller() {
        super();
    }

	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{
		
			response.setContentType("text/html");
			
			
			String f_name = request.getParameter("firstname");
			String l_name = request.getParameter("lastname");
			String u_id =request.getParameter("uid");
			String e_id = request.getParameter("emailid");
			String p_word = request.getParameter("password");
			String confirm_pass=request.getParameter("confirm");
			String cont= request.getParameter("contact");
			String date = request.getParameter("dob");
			try
			{
				PrintWriter out = response.getWriter();	
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2511");
				
			if(p_word.equals(confirm_pass))	
			{
				
			String str="Insert into registration(fname,rname,uname,email,pass,ph,dob) values(?,?,?,?,?,?,?)";
		    String str2="insert into login (name,password,email)values( ?, ?, ?)";
			PreparedStatement ps=con.prepareStatement(str);
			PreparedStatement ps2=con.prepareStatement(str2);
			
			ps.setString(1, f_name);
			ps.setString(2, l_name);
			ps.setString(3,u_id);
			ps.setString(4, e_id);
			ps.setString(5, p_word);
			ps.setString(6, cont);
			ps.setString(7, date);
			ps2.setString(1, u_id);
			ps2.setString(2, p_word);
			ps2.setString(3, e_id);
			ps.executeUpdate();
			ps2.executeUpdate();

			MongoClient mongo=new MongoClient("localhost",27017);

			DB userDB=mongo.getDB(u_id);
			DBCollection table=userDB.getCollection("sent");
			table=userDB.getCollection("received");	

			out.println("<script type=\"text/javascript\">");  
			out.println("alert('Sign Up Successful');");  
			out.println("</script>");
			
			
	          response.setHeader("Cache-Control","no-cache");
	          response.setHeader("Cache-Control","no-store");
	          response.setDateHeader("Expires",0);
	          response.setHeader("Pragma","no-cache");
	          
	          
	          
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			
			}
			
			else
			{	

				out.println("<script type=\"text/javascript\">");  
				out.println("alert('Password dooesn't match');");  
				out.println("</script>");
				
				RequestDispatcher rd = request.getRequestDispatcher("unsuccessful.jsp");
				rd.forward(request, response);
			}
			
			
			}
			catch(Exception e)
			{
				PrintWriter out=response.getWriter();
				out.println(e);
				
			}
		
			

		}
}
