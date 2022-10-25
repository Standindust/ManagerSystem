
package purchase;


import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;
import common.*;


public class PurchaseBean
{
	//插入采购实体的信息
   public int InsertPurchase(String PurId,String ProId,String ProName,String SalerId,
          String EmpId,String price,String Quantity,String Data ,String Address,String Memo) throws Exception  
              
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;            
        float Price = Float.valueOf(price);
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT PurId FROM Purchase WHERE PurId='"+PurId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
               
               nResult=2;     //PurId重复；  	
            }
         else
           {  
           	   
               sql= "insert into Purchase( PurId,ProId,ProName,SalerId,EmpId,Price,Quantity, Data , Address,Memo) values('"
               +PurId+"','"+ProId+"','"+ProName+"','"+SalerId+"','"+EmpId+"',"+Price+",'"+Quantity+"','"+Data +"','"+Address+"','"+Memo+"')";
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
   
   //按照采购实体的编号进行查询某一个采购实体联系人的详细信息
   public Purchase getPurchaseDetails(String PurId) throws Exception {
    Connection con=null;
    PreparedStatement prepStmt=null;
    DataBase database = new DataBase();
    ResultSet rs =null;
    try {
      con=database.getConnection();
      String selectStatement = "select PurId,ProId,ProName,SalerId,EmpId,Price,Quantity, Data , Address,Memo " + "from Purchase where PurId = ? ";
      prepStmt = con.prepareStatement(selectStatement);
      prepStmt.setString(1, PurId);
      rs = prepStmt.executeQuery();
      if (rs.next()) {
                      Purchase bd = new Purchase(rs.getString(1), rs.getString(2), 
                                           rs.getString(3),rs.getString(4),rs.getString(5),
                                           rs.getFloat(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
                      prepStmt.close();
                      return bd;
                     }
      else 
                     {
                      return null;
                         }
                  }
     finally
           {
               database.closeResultSet(rs);
               database.closePrepStmt(prepStmt);
               database.closeConnection(con);
            }
  } 
  
  
  //删除一个采购实体联系人的所有信息
  public int deleteOnePurchase(String PurId) throws Exception 
    {
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT PurId FROM Purchase WHERE PurId='"+PurId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
             sql="DELETE  from Purchase where PurId='"+PurId+"'";
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
   //更新一个采购实体的基本信息
 public int updatePurchase(String PurId,String ProId,String ProName,String SalerId,String EmpId,String price,
       String Quantity,String Data ,String Address,String Memo) throws Exception                  
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
        float Price = Float.valueOf(price);
    try {    	 
         con = database.getConnection();                            
         String sql = "UPDATE Purchase set PurId='"+PurId+"', ProId='"+ProId+"',ProName='"+ProName+"',SalerId='"+SalerId+"',EmpId='"
                    +EmpId+"',Price="+Price+",Quantity='"+Quantity+"',Data ='"+Data +"',Address='"+Address+"',Memo='"+Memo+"' where PurId='"+PurId+"'";
         Stmt = con.createStatement();
         nResult = Stmt.executeUpdate(sql);     
         return nResult;
         }  
         catch( SQLException ex )
	    	{
			   ex.printStackTrace( System.err );
			   nResult=0;
               return nResult;
	    	}
         finally
            {
               database.close(null,Stmt,con);
             }      
      
   } 
 // 查询所有的采购实体的信息
	public Vector allPurchaseInfor()throws Exception
	{
		Vector vt = new Vector();
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		DataBase database = new DataBase();
		try
	    	{
			conn = database.getConnection();
			st = conn.createStatement();
			String sql = "SELECT PurId,ProId,ProName,SalerId,EmpId,Price,Quantity, Data , Address, Memo FROM Purchase ";
			sql = sql + " ORDER BY PurId ASC";
			rs = st.executeQuery( sql );
		    	while( rs.next() )
		          	{
				
				Purchase  purchase = new Purchase(rs.getString(1),rs.getString(2),rs.getString(3),
                                   rs.getString(4),rs.getString(5),rs.getFloat(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
                vt.add(purchase);

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
		 
          return vt;
    }
}