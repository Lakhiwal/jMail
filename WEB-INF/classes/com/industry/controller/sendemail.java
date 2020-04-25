package com.industry.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class sendemail
 */
@WebServlet("/sendemail")
public class sendemail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sendemail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		// TODO Auto-generated method stubs

	try{
		response.setContentType("text/html");
		String f= request.getParameter("email");
		request.getAttribute("email");
		String h=(String)request.getAttribute("email");
		request.getSession(false).getAttribute("email");
		 HttpSession session = request.getSession();
		 String user = (String)session.getAttribute("email");
		String user2=user.replaceAll("@jmail.com","");
		String recipient = request.getParameter("recipients");
		String re2=recipient.replaceAll("@jmail.com","");
		String sub = request.getParameter("subject");
		String msg = request.getParameter("Message");
		request.getAttribute("email");
       java.util.Date date=new java.util.Date();
       java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
       String date2=sdf.format(date);
       Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/messengernew","root","2511");
		String g="use "+user2;
		String a="insert into sent (tos,msg,sentTo,Subject) values(?,?,?,?);";
		String l="use "+re2;
		String ga="insert into recieved (tor,msg,reFrom,Subject) values(?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(g);
		PreparedStatement ps2=con.prepareStatement(a);

		PreparedStatement ps3=con.prepareStatement(l);
		PreparedStatement ps4=con.prepareStatement(ga);
		
		ps2.setString(1, date2);
		ps2.setString(2, msg);
		ps2.setString(3, recipient);
		ps2.setString(4, sub);
		ps.executeQuery();
		ps2.executeUpdate();
		ps4.setString(1, date2);
		ps4.setString(2, msg);
		ps4.setString(3, user2);
		ps4.setString(4, sub);
	    ps3.executeQuery();
	    ps4.executeUpdate();
	    response.sendRedirect("home.jsp");
	}
	catch(Exception e) {
		System.out.print(e);
		response.sendRedirect("msgnotsent.jsp");
	}}
	
}
