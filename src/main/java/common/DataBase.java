/** access SQLserver2000 database through JDBC Driver */


package common;
import java.sql.*;
import javax.naming.*;
import javax.sql.*;
import java.util.*;

public class DataBase {

  //private ArrayList books;
  private String driverStr="com.mysql.cj.jdbc.Driver";
    private String url1="jdbc:mysql://localhost:3306/hotel";
    private String url2="?user=root&password=123456";
    private String url3="&useUnicode=true&characterEncoding=UTF-8";
    private String connStr=url1+url2+url3;
    private Connection conn=null;
    private Statement stmt=null;

  public DataBase() throws Exception{
     Class.forName(driverStr);
  }

  public Connection getConnection()throws Exception{
      return java.sql.DriverManager.getConnection(connStr);
  }

  public void closeConnection(Connection con){
    try{
        if(con!=null) con.close();
      }catch(Exception e){
        e.printStackTrace();
      }
  }

  public void closePrepStmt(PreparedStatement prepStmt){
    try{
        if(prepStmt!=null) prepStmt.close();
      }catch(Exception e){
        e.printStackTrace();
      }
  }

  public void closeResultSet(ResultSet rs){
    try{
        if(rs!=null) rs.close();
      }catch(Exception e){
        e.printStackTrace();
      }
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

