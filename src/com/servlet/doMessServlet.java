package com.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Vector;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class doMessServlet
 */
@WebServlet("/doMessServlet")
public class doMessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Vector<String> v=new Vector<String>();
	ServletContext application;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public doMessServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String mess=request.getParameter("txt");
		HttpSession session=request.getSession();
		String name=(String)session.getAttribute("user_name");
		if(name==null)
			name="gust"+(int)(Math.random()*1000);
		if(mess==null)
			mess="Œﬁ–≈œ¢";
		SimpleDateFormat matter=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String time=matter.format(new Date());
		String s=name+"#"+time+"#"+mess;
		sendMess(s);
		String sendmess=(String)session.getAttribute("sendmess");
		if(sendmess.equals("comment.jsp"))
			response.sendRedirect("comment.jsp");
		else
			response.sendRedirect("comment2.jsp");
	}
	synchronized void sendMess(String s){
		application=getServletContext();
		v.add(s);
		application.setAttribute("mess", v);
	}

}
