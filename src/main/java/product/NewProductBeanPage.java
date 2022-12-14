package product;

import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;
import product.*;
import common.*;
import shopping.*;

public class NewProductBeanPage
{
 //返回Product表项数
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
			String sql = sql = "select  count(ProId) from  Product ";   
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

 // 查询所有新商品的的信息
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
			String sql = "SELECT  ProId,ProName,TypeId,ProUnit,ProPrice,NowPrice,Quantity,Memo FROM Product where NowPrice=0";
			sql = sql + " ORDER BY ProId ASC";
			rs = st.executeQuery( sql );		
			for(int i=0; i<start; i++)
				rs.next();
		}catch(SQLException e) {
			System.err.println("QueryPage.getPageof()" +e.getMessage());
		}
		
		return rs;
	}
	 ////修改某一个新商品的信息
  public int updateProduct(String ProId,String ProName,String TypeId,
                   String ProUnit,String NowPrice,String Memo) throws Exception
    {	
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
        float nowprice = Float.valueOf(NowPrice);
             
    try {  
         con = database.getConnection();                            
         Stmt = con.createStatement();
         String sql= "update Product set ProId='"+ProId+"',ProName='"+ProName
                  +"',TypeId='"+TypeId+"',ProUnit='"+ProUnit+"',NowPrice="+NowPrice
                  +",Memo='"+Memo+"' where ProId='"+ProId+"'";
              nResult = Stmt.executeUpdate(sql);
         if(nResult==1)
         nResult=1;      
         return nResult;
         }                          
     catch( SQLException ex )
	    	{
			     ex.printStackTrace( System.err );
			     nResult=0;
            return nResult;
	    	}
     finally{
             database.close(null,Stmt,con);
            } 
     }      

 }
 