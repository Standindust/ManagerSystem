
package saler;


import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;
import common.*;


public class SalerBean
{
	//插入供应商联系人的信息
   public int InsertSaler(String SalerId,String SalerName,String Sex,
          String Title,String Office,String Mobile,String Hobby,String Memo,String SupId) throws Exception  
              
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT SalerId FROM Saler WHERE SalerId='"+SalerId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
               
               nResult=2;     //SalerId重复；  	
            }
         else
           {   sql = "SELECT SupId FROM Supplyer WHERE SupId='"+SupId+"'"; 
               rs = Stmt.executeQuery( sql );
               if(rs.next()){
           	   
               sql= "insert into Saler( SalerId,SalerName,Sex,Title,Office,Mobile, Hobby, Memo,SupId) values('"
               +SalerId+"','"+SalerName+"','"+Sex+"','"+Title+"','"+Office+"','"+Mobile+"','"+Hobby+"','"+Memo+"','"+SupId+"')";
               nResult = Stmt.executeUpdate(sql); 
               }
               else
               {
               	nResult =3;//在Supplyer中不存在该厂家；
               	} 
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
   
   //按照供应商联系人的编号进行查询某一个供应商联系人的详细信息
   public Saler getSalerDetails(String SalerId) throws Exception {
    Connection con=null;
    PreparedStatement prepStmt=null;
    DataBase database = new DataBase();
    ResultSet rs =null;
    try {
      con=database.getConnection();
      String selectStatement = "select SalerId,SalerName,Sex,Title,Office,Mobile, Hobby, Memo,SupId " + "from Saler where SalerId = ? ";
      prepStmt = con.prepareStatement(selectStatement);
      prepStmt.setString(1, SalerId);
      rs = prepStmt.executeQuery();
      if (rs.next()) {
                      Saler bd = new Saler(rs.getString(1), rs.getString(2), 
                                           rs.getString(3),rs.getString(4),rs.getString(5),
                                           rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9));
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
  
  
  //删除一个供应商联系人的所有信息
  public int deleteOneSaler(String SalerId) throws Exception 
    {
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT SalerId FROM Saler WHERE SalerId='"+SalerId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
             sql="DELETE  from Saler where SalerId='"+SalerId+"'";
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
   //更新一个供应商联系人的基本信息
 public int updateSaler(String SalerId,String SalerName,String Sex,String Title,String Office,
       String Mobile,String Hobby,String Memo,String SupId) throws Exception                  
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "UPDATE saler set SalerId='"+SalerId+"', SalerName='"+SalerName+"',Sex='"+Sex+"',Title='"
                    +Title+"',Office='"+Office+"',Mobile='"+Mobile+"',Hobby='"+Hobby+"',Memo='"+Memo+"',SupId='"+SupId+"' where SalerId='"+SalerId+"'";
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
 // 查询所有的供应商联系人的信息
	public Vector allSalerInfor()throws Exception
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
			String sql = "SELECT SalerId,SalerName,Sex,Title,Office,Mobile, Hobby, Memo, SupId FROM Saler ";
			sql = sql + " ORDER BY SalerId ASC";
			rs = st.executeQuery( sql );
		    	while( rs.next() )
		          	{
				
				Saler  saler = new Saler(rs.getString(1),rs.getString(2),rs.getString(3),
                                   rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9));
                vt.add(saler);

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