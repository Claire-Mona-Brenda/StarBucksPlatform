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
 * Servlet implementation class writeAddressServlet
 */
@WebServlet("/wAddressServlet")
public class wdAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    User myAddress;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public wdAddressServlet() {
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
		HttpSession session=request.getSession();
		String address=new String(request.getParameter("address").getBytes("iso-8859-1"),"utf-8");
		String consignee=new String(request.getParameter("consignee").getBytes("iso-8859-1"),"utf-8");
		String tele=new String(request.getParameter("tele").getBytes("iso-8859-1"),"utf-8");
		String user_name=(String)session.getAttribute("user_name");
		UserDao userdao=new UserDao();
		try{
			userdao.addAddress(user_name, consignee, address, tele);
			myAddress=userdao.queryAddress(user_name);
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		session.setAttribute("myAddress", myAddress);
		response.sendRedirect("querendingdan.jsp");
	}

}
