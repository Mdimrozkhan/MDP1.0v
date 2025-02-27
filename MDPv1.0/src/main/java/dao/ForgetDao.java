package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import beans.ForgetBean;
import beans.RegisterBean;
import sqlconnector.ConnectionProvider;

public class ForgetDao 
{
	

	public String forgetone(ForgetBean beanss) {
	
	try {
		Connection con=null;
		con=ConnectionProvider.getConnection();
		
		
		PreparedStatement ps=con.prepareStatement("update forget set password=? where email=? ");
		ps.setString(2, beanss.getMail());
		ps.setString(1,beanss.getNewpass());
	
		
		int i= ps.executeUpdate();
		if(i>0) {
			return "success";
		}
		else {
			return "fail";
		}
		
		
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	return null;
	}
}
