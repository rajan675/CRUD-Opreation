package com.company;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TeacherDAO {
	public int insrtTech(TeacherPOJO s) throws ClassNotFoundException, SQLException {
		Connection con = DbConnection.getConn();
		String sql = "insert into teachers values(?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, s.getId());
		ps.setString(2, s.getName());
		return ps.executeUpdate();
	}

	public int dlttech(TeacherPOJO s) throws ClassNotFoundException, SQLException {
		Connection con = DbConnection.getConn();
		String sql = "delete from teachers where id =?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, s.getId());
		return ps.executeUpdate();
	}

    public int updatetech(TeacherPOJO s) throws ClassNotFoundException, SQLException {
		
		Connection con=DbConnection.getConn();
		String sql=("update teachers set Teacher=? where id=?");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, s.getName());
		ps.setInt(2, s.getId());
		return ps.executeUpdate();
	}
    public List<TeacherPOJO> display() throws ClassNotFoundException, SQLException{
		Connection con=DbConnection.getConn();
		List<TeacherPOJO> list=new ArrayList<TeacherPOJO>();
		String sql="select * from teachers";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			TeacherPOJO pojo =new TeacherPOJO();
			pojo.setId(rs.getInt(1));
			pojo.setName(rs.getString(2));
			list.add(pojo);
		}
		
		return list;
    }
}