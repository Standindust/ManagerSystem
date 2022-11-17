package hotel.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
public class DBBean {


	 private String driverStr="com.mysql.cj.jdbc.Driver";
	    private String url1="jdbc:mysql://localhost:3306/hotel";
	    private String url2="?user=root&password=123456";
	    private String url3="&useUnicode=true&characterEncoding=UTF-8";
	    private String connStr;
	    private Connection conn=null;
	    private Statement stmt=null;
	    public DBBean(){
	    	connStr=url1+url2+url3;
		    try{
			   Class.forName(driverStr);
			   conn = DriverManager.getConnection(connStr);
			   stmt = conn.createStatement();
		    }catch(Exception ex){
		    	System.out.println("NO");
    }
	    }
	    public int executeUpdate(String s){
	        int result=0;
	        try{
	            result=stmt.executeUpdate(s);
	        }catch(Exception ex){
	            System.out.println("WRONG");
	        }
	        return result;
	    }
	    public ResultSet executeQuery(String s){
			ResultSet rs=null;
			try{
				rs=stmt.executeQuery(s);
			}
			catch(Exception ex){
				System.out.println("执行查询错误！");
			}
			return rs;
	    }
		public void close(){
			try{
				stmt.close();
				conn.close();
			}
			catch(Exception e){}
		}


	}

