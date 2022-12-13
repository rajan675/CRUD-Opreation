package com.company;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {
	public int insertStd(StudentPOJO sd) throws ClassNotFoundException, SQLException {
		Connection con = DbConnection.getConn();
		String sql = "insert into students values(?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, sd.getSid());
		ps.setString(2, sd.getSname());
		ps.setString(3, sd.getSdob());
		ps.setString(4, sd.getSaddress());
		ps.setString(5, sd.getSphone());
		ps.setString(6, sd.getSclass());

		return ps.executeUpdate();
		
	}
	
	public int deleteStd(StudentPOJO sd) throws ClassNotFoundException, SQLException {
		Connection con = DbConnection.getConn();
		String sql = ("delete from students where id =?");
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, sd.getSid());

		return ps.executeUpdate();
	}
	
	public int updateStd(StudentPOJO sd) throws ClassNotFoundException, SQLException {
	
		Connection con=DbConnection.getConn();
		String sql=("update students set StudentName=?,Dob=?,Address=?,Phone=?,Class=? where id=? ");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,sd.getSname());
		ps.setString(2, sd.getSdob());
		ps.setString(3, sd.getSaddress());
		ps.setString(4, sd.getSphone());
		ps.setString(5, sd.getSclass());
		ps.setInt(6, sd.getSid());
		return ps.executeUpdate();
		
	}
	public List<StudentPOJO> display() throws ClassNotFoundException, SQLException{
		Connection con=DbConnection.getConn();
		List<StudentPOJO> list=new ArrayList<StudentPOJO>();
		String sql="select * from students";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			StudentPOJO pojo =new StudentPOJO();
			pojo.setSid(rs.getInt(1));
			pojo.setSname(rs.getString(2));
			pojo.setSdob(rs.getString(3));
			pojo.setSaddress(rs.getString(4));
			pojo.setSphone(rs.getString(5));
			pojo.setSclass(rs.getString(6));
			list.add(pojo);
		}
		
		return list;
		
	}

}
