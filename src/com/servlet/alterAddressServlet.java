package com.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.po.User;

/**
 * Servlet implementation class alterAddressServlet
 */
@WebServlet("/alterAddressServlet")
public class alterAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public alterAddressServlet() {
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
		String address=new String(request.getParameter("address").getBytes("iso-8859-1"),"utf-8");
		String consignee=new String(request.getParameter("consignee").getBytes("iso-8859-1"),"utf-8");
		String tele=new String(request.getParameter("tele").getBytes("iso-8859-1"),"utf-8");
		UserDao userdao=new UserDao();
		HttpSession session=request.getSession();
		String user_name=(String)session.getAttribute("user_name");
		try{
			userdao.alterAddress(user_name, consignee, address, tele);
			User myAddress=userdao.queryAddress(user_name);
			session.setAttribute("myAddress", myAddress);
			
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		response.sendRedirect("address.jsp");
	}

}
