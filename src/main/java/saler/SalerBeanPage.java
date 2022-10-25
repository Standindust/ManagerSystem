
package saler;


import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;
import common.*;


public class SalerBeanPage
{
//返回Saler表项数
	public int getCount()throws Exception
	 {
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		DataBase database = new DataBase();
		int count=0;
		try {
			conn = database.getConnection();
			st = conn.createStatement();
			String sql = sql = "select  count(SalerId) from  Saler ";   
			rs = st.executeQuery( sql );
			if(!rs.next()) 
			{
				return 0;
			} 
			else 
			{
				count = rs.getInt(1);
			}
	    }
    	catch( SQLException ex )
	    	{
			   ex.printStackTrace( System.err );
	    	}
         finally
            {
               database.close(null,st,conn);
             } 
		 
         	return count;
    }
 /////得到总页数
  public int totalPage(int pagesize) throws Exception
    {
        int  Count = getCount();
		return (Count+pagesize-1)/pagesize;
  	} 

 // 查询所有的供应商联系人的信息
   public ResultSet getPageof(String pg, int pagesize)throws Exception 
    	{
    	Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		DataBase database = new DataBase();	
		int page = Integer.parseInt(pg);
		int count = getCount();
		if(count==0)
		  return null;
		int totalpage = (count+pagesize-1)/pagesize;	
		if(page > totalpage)
			page = totalpage;
	    int start = (page-1)*pagesize;		
		try {
			
			conn = database.getConnection();
			st = conn.createStatement();
			String sql = "SELECT SalerId,SalerName,Sex,Title,Office,Mobile, Hobby, Memo, SupId FROM Saler ";
			sql = sql + " ORDER BY SalerId ASC";
			rs = st.executeQuery( sql );		
			for(int i=0; i<start; i++)
				rs.next();
		}catch(SQLException e) {
			System.err.println("QueryPage.getPageof()" +e.getMessage());
		}
		
		return rs;
	}
 
}