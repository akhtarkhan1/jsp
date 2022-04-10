package mypack;
import java.sql.*;
public class Dao
{
	static Connection con;
	static
	{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmsir","root","root");
		System.out.println("connected...");
	}
	catch(Exception ex)
	{
		System.out.println(ex);
	}
	}
	public static Connection getMyConnection()
	{
		
		return con;
	}
	
	
} 

