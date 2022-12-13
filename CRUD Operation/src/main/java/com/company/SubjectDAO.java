package com.company;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SubjectDAO {
 public int insrtSub (SubjectPOJO s) throws ClassNotFoundException, SQLException {
	 Connection con = DbConnection.getConn();
	 String sql = "insert into subjects values(?,?)";
	 PreparedStatement ps = con.prepareStatement(sql);
	 ps.setInt(1, s.getId());
	 ps.setString(2, s.getSubject());
	 return ps.executeUpdate();
 }
 public int dltSub(SubjectPOJO s) throws ClassNotFoundException, SQLException {
	 Connection con =DbConnection.getConn();
	 String sql= "delete from subjects where id =?";
	 PreparedStatement ps = con.prepareStatement(sql);
	 ps.setInt(1, s.getId());
	 return ps.executeUpdate();
 }
 public int updateSub(SubjectPOJO s) throws ClassNotFoundException, SQLException {
		
		Connection con=DbConnection.getConn();
		String sql=("update subjects set Subject=? where id=?");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, s.getSubject());
		ps.setInt(2, s.getId());
		return ps.executeUpdate();
}
 public List<SubjectPOJO> display() throws ClassNotFoundException, SQLException{
		Connection con=DbConnection.getConn();
		List<SubjectPOJO> list=new ArrayList<SubjectPOJO>();
		String sql="select * from subjects";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			SubjectPOJO pojo =new SubjectPOJO();
			pojo.setId(rs.getInt(1));
			pojo.setSubject(rs.getString(2));
			list.add(pojo);
		}
		
		return list;
}
 }