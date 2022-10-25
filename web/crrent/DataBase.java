package common;

import java.sql.*;
public class DataBase {
    public  Connection conn;
    public  Statement stmt;
    public   ResultSet rs=null;
    public String  sqlStr="";
 public static Connection getConnection( ) throws SQLException
	{
				
		String DBDRIVER = "com.microsoft.jdbc.sqlserver.SQLServerDriver";
	    String dbUrl ="jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=managerment";
        String dbUser = "sa";
        String dbPwd = "sa";
		try
		{
			Class.forName( DBDRIVER );
		}
		catch ( ClassNotFoundException ex )
		{
			ex.printStackTrace( System.err );
		}
		return DriverManager.getConnection( dbUrl,dbUser,dbPwd );
 
	}
 public static void close( ResultSet rs, Statement st, Connection conn )
	{
		try
		{
			if( rs!=null ) rs.close();
		}
		catch( SQLException ex ) { };
	
		try
		{
			if( st!=null ) st.close();
		}
		catch( SQLException ex ) { };
	
		try
		{
			if( conn!=null ) conn.close();
		}
		catch( SQLException ex ) { };
	}
}