package com.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import com.db.DBUtil;
import com.po.GoodInfo;
public class Init {
	public Init(){}
	public ArrayList<GoodInfo> init()throws SQLException{
			ArrayList<GoodInfo>goodsList=new ArrayList<GoodInfo>();
			Connection conn=DBUtil.getConnection();
			String sql="select id,name,price,num,picture from goodsList";
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				GoodInfo single=new GoodInfo();
				single.setId(rs.getInt("id"));
				single.setName(rs.getString("name"));
				single.setPrice(rs.getFloat("price"));
				single.setNum(rs.getInt("num"));
				single.setPic(rs.getString("picture"));
				goodsList.add(single);
			}
			return goodsList;
	}

}
