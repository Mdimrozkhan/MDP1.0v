package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import beans.EditprofileBean;
import sqlconnector.ConnectionProvider;

public class EditprofileDao {
	public  String editprofile(EditprofileBean edit) {
	
	
	Connection con=null;
	try {

		
	con=	ConnectionProvider.getConnection();
	//pr.println("value of:"+name+"//"+email+"//"+phone+"//"+password+"//"+con);

	//data store in database 
	PreparedStatement preparedStatement=con.prepareStatement("update forget set name=?, phone=?, gender=? where email=?");
	
		preparedStatement.setString(1,edit.getEname()); 
		
		preparedStatement.setString(2,edit.getEphone());
		preparedStatement.setString(3,edit.getEgender());
		preparedStatement.setString(4,edit.getEmail());
		
		
		int i=preparedStatement.executeUpdate();
		if(i>0) {
			return "success";
			
//			regist.setId(i.getString("id"));
//			regist.setName(i.getString("name"));
//			regist.setMail(i.getString("email"));
//			regist.setPhone(i.getString("phone"));			
//			regist.setPass(i.getString("password"));
//			regist.setGender(i.getString("gender"));
			
		}else {
		 return "fail";
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	return "fail";
	}

}
