package shopping;


import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;
import departments.*;
import common.*;

public class CheckoutBean
{
	//向插入商品收入表信息
   public int InsertCheckout(String ProId,String ProName,String TypeId,
                   String ProUnit,float NowPrice,float ProPrice,int Quantity) throws Exception
    {
        
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
               sql ="update Checkout set ProName='"+ProName+"',TypeId='"
               +TypeId+"',ProUnit='"+ProUnit+"',NowPrice="+NowPrice
               +",ProPrice="+ProPrice+",Quantity=Quantity+"+Quantity+" where ProId='"+ProId+"'";
               nResult = Stmt.executeUpdate(sql);       	
            }
         else
           {
               sql="insert into Checkout(ProId,ProName,TypeId,ProUnit,NowPrice,ProPrice,Quantity)VALUES('"
               +ProId+"','"+ProName+"','"+TypeId+"','"+ProUnit+"',"+NowPrice+","+ProPrice+","+Quantity+")";
              nResult = Stmt.executeUpdate(sql);     
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