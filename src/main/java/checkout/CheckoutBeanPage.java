package checkout;


import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;
import common.*;
import shopping.*;



public class CheckoutBeanPage
{

//返回Checkout表项数
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
			String sql = sql = "select  count(ProId) from  Checkout ";   
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

 // 查询所有的供应厂家的信息
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
			String sql = "SELECT ProId,ProName,TypeId,ProUnit,NowPrice,ProPrice,Quantity FROM Checkout ";
			sql = sql + " ORDER BY ProId ASC";
			rs = st.executeQuery( sql );		
			for(int i=0; i<start; i++)
				rs.next();
		}catch(SQLException e) {
			System.err.println("QueryPage.getPageof()" +e.getMessage());
		}
		
		return rs;
	}

 //删除一个Checkout的所有信息
  public int deleteOneCheckout(String ProId) throws Exception 
    {
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT ProId FROM Checkout WHERE ProId='"+ProId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
             sql="DELETE  from Checkout where ProId='"+ProId+"'";
             nResult = Stmt.executeUpdate(sql);	    	
             }
         else
            {
              nResult=2;      
            }
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