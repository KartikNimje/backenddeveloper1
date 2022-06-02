package com.academy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.academy.dbutil.DbUtil;
import com.academy.pojo.Classreport;

public class ClassreportDAO {
	
	public List<Classreport> getallclassreport() throws ClassNotFoundException, SQLException{
		ArrayList<Classreport> list=new ArrayList<>();
		Connection con=DbUtil.getConn();
		Classreport s=new Classreport();
		System.out.println("getter : "+s.getClasses());
		String sql="select * from classreport";
		PreparedStatement ps=con.prepareStatement(sql);
		//ps.setString(1, s.getClasses());
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			s.setClasses(rs.getString(1));
			s.setSubject(rs.getString(2));
			s.setTeacher(rs.getString(3));
			list.add(s);
			
		}
		return list;
	}
	

}
