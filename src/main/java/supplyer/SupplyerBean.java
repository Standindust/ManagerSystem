package supplyer;


import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;
import common.*;
import shopping.*;



public class SupplyerBean
{
	//插入供应商的信息
   public int InsertSupplyer(String SupId,String SupName,String Address,
                             String Postcode,String ProductName) throws Exception                  
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT SupId FROM Supplyer WHERE SupId='"+SupId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
               
               nResult=2;       	
            }
         else
           {
               sql="insert into Supplyer(SupId,SupName,Address,Postcode,ProductName)VALUES('"
               +SupId+"','"+SupName+"','"+Address+"','"+Postcode+"','"+ProductName+"')";
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
   //按照供应商的编号进行查询某一个供应商的详细信息
   public Supplyer getSupplyerDetails(String SupId) throws Exception {
    Connection con=null;
    PreparedStatement prepStmt=null;
    DataBase database = new DataBase();
    ResultSet rs =null;
    try {
      con=database.getConnection();
      String selectStatement = "select SupId,SupName,Address,Postcode,ProductName " + "from Supplyer where SupId = ? ";
      prepStmt = con.prepareStatement(selectStatement);
      prepStmt.setString(1, SupId);
      rs = prepStmt.executeQuery();

      if (rs.next()) {
        Supplyer bd = new Supplyer(rs.getString(1), rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5));
        prepStmt.close();

        return bd;
      }
      else {
        return null;
      }
    }finally{
      database.closeResultSet(rs);
      database.closePrepStmt(prepStmt);
      database.closeConnection(con);
    }
  } 
  //删除一个供应商的所有信息
  public int deleteOneSupplyer(String SupId) throws Exception 
    {
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT SupId FROM Supplyer WHERE SupId='"+SupId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
             sql="DELETE  from Supplyer where SupId='"+SupId+"'";
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
 public int updateSupplyer(String SupId,String SupName,String Address,
                             String Postcode,String ProductName) throws Exception                  
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "UPDATE Supplyer SET  SupId='"+SupId+"',SupName='"+SupName+"', Address='"+Address+"',Postcode='"
         +Postcode+"',ProductName='"+ProductName+"' WHERE  SupId='"+SupId+"'"; 
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
   
    // 查询所有的供应厂家的信息
	public Vector allSupplyerInfor()throws Exception
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
			String sql = "SELECT SupId,SupName,Address,Postcode,ProductName FROM Supplyer ";
			sql = sql + " ORDER BY SupId ASC";
			rs = st.executeQuery( sql );
		    	while( rs.next() )
		          	{
				
				Supplyer  supplyer = new Supplyer(rs.getString(1),rs.getString(2),rs.getString(3),
                                   rs.getString(4),rs.getString(5));
                vt.add(supplyer);

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