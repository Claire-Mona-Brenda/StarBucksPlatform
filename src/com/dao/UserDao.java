package com.dao;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.db.DBUtil;
import com.po.User;
public class UserDao {
	public UserDao(){
		
	}
	public User queryUserInfo(String tele)throws SQLException{
		User user=null;
		Connection conn=DBUtil.getConnection();
		String sql="select tele,user_name,password from userlist where tele=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, tele);
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
			user=new User();
			user.setName(rs.getString("user_name"));
			user.setPassword(rs.getString("password"));
			user.setTele(rs.getString("tele"));
		}
		return user;
	}
	public ArrayList<String> queryUsername()throws SQLException{
		Connection conn=DBUtil.getConnection();
		String sql="select user_name from userlist";
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		ArrayList<String>usernames=new ArrayList<String>();
		while(rs.next()){
			usernames.add(rs.getString("user_name"));
		}
		return usernames;
		
	}
	public ArrayList<String> queryTele()throws SQLException{
		Connection conn=DBUtil.getConnection();
		String sql="select tele from userlist";
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		ArrayList<String>teles=new ArrayList<String>();
		while(rs.next()){
			teles.add(rs.getString("tele"));
		}
		return teles;
		
	}
	public void addUser(String user_name,String password,String tele)throws SQLException{
		Connection conn=DBUtil.getConnection();
		String sql="Insert into userlist(user_name,password,tele) Values(?,?,?)";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, user_name);
		pstmt.setString(2, password);
		pstmt.setString(3, tele);
		pstmt.executeUpdate();
	}
	
	public User queryAddress(String user_name)throws SQLException{
		User user=null;
		ArrayList<User>addressList=new ArrayList<User>();
		Connection conn=DBUtil.getConnection();
		String sql="select consignee,address,tele from addresslist where user_name=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, user_name);
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
			user=new User();
			user.setConsignee(rs.getString("consignee"));
			user.setAddress(rs.getString("address"));
			user.setTele(rs.getString("tele"));
		}
		return user;
	}
	
	public void addAddress(String user_name,String consignee,String address,String tele)throws SQLException{
		Connection conn=DBUtil.getConnection();
		String sql="Insert into addresslist values"+"("+"'"+user_name+"','"+consignee+"','"+tele+"','"+address+"')";
		Statement stmt=conn.createStatement();
		stmt.executeUpdate(sql);
		
	}
	public void alterAddress(String user_name,String consignee,String address,String tele)throws SQLException{
		Connection conn=DBUtil.getConnection();
		String sql="Update addresslist set consignee=?,address=?,tele=? where user_name=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, consignee);
		pstmt.setString(2, address);
		pstmt.setString(3, tele);
		pstmt.setString(4, user_name);
		pstmt.executeUpdate();
	}
}
