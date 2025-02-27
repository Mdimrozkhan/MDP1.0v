package sqlconnector;

import java.sql.Connection;
import java.sql.DriverManager;



public final class ConnectionProvider {

	
			//constructor ;- which is create only single method work 
			//cant assosiation any other func and method -cant create obj.
	static Connection con=null;		
	private ConnectionProvider()
			{
				
			}
			
			
			
			//FACTORY METHOD :-RETURN DATABASE
			public static Connection getConnection()
			{
				
				if(con==null)
				{
				try {
				Class.forName(DatabaseDetails.DATABASE_DRIVER);
				con = DriverManager.getConnection(DatabaseDetails.DATABASE_URL,DatabaseDetails.DATABASE_USER,DatabaseDetails.DATABASE_PASS);
				}catch(Exception e) {
					e.printStackTrace();
					}
				}
				return con;

			}

}
