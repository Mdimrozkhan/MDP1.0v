package dao;


import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;

import beans.RegisterBean;
import sqlconnector.ConnectionProvider;

public class RegisterDao 
{
	Connection con=null;
	int getValue;
	public void generateuniqueId(String passQuery) {
		
		try {
			con=ConnectionProvider.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(passQuery);
			if(rs.next()) {
				getValue=Integer.parseInt(rs.getString(1));
			}
			
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}
	
	
	
	
	
	public String save(RegisterBean bean)
	{
		generateuniqueId("select count(id)+1 from forget");
		String id="UserId"+new SimpleDateFormat("ddmmyy").format(new Date(0))+getValue;
		Connection con=null;
		try {

			
		con=	ConnectionProvider.getConnection();
		//pr.println("value of:"+name+"//"+email+"//"+phone+"//"+password+"//"+con);

		//data store in database 
		PreparedStatement preparedStatement=con.prepareStatement("insert into forget values(?,?,?,?,?,?)");
			preparedStatement.setString(1, id);
			preparedStatement.setString(2,bean.getName()); 
			preparedStatement.setString(3,bean.getMail());
			preparedStatement.setString(4,bean.getPhone());
			preparedStatement.setString(5,bean.getPass());
			preparedStatement.setString(6,bean.getGender());
			
			int i= preparedStatement.executeUpdate();
			if(i>0) {
				return "success";
				
			}else {
			 return "fail";
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "fail";

	}

}
