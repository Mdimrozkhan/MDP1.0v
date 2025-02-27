package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;

import beans.RegisterBean;
import sqlconnector.ConnectionProvider;

public class loginDao {
	Connection con=null;
	
	public   RegisterBean  login(RegisterBean regist) {
		
		try {
		
		con=ConnectionProvider.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from forget where email=? and password=?");
		ps.setString(1,regist.getMail());
		ps.setString(2, regist.getPass());
		
//		ResultSet rs=ps.executeQuery();
		ResultSet i=ps.executeQuery();
		
		if(i.next())
		{
			
			
			regist.setId(i.getString("id"));
			regist.setName(i.getString("name"));
			regist.setMail(i.getString("email"));
			regist.setPhone(i.getString("phone"));			
			regist.setPass(i.getString("password"));
			regist.setGender(i.getString("gender"));
		}else {
			
			
		}
		
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return regist;
		
		
		
	}

	
}


