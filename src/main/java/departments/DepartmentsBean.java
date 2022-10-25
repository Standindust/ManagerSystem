package departments;


import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;
import common.*;

public class DepartmentsBean
{
	//���벿�ŵ���Ϣ
  public int InsertDepartments(String DepId,String DepName) throws Exception 
    {
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT DepId FROM Departments WHERE DepId='"+DepId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
         	 nResult=2;
         	
            }
         else
           {
              sql="insert into Departments(DepId,DepName)VALUES('"+DepId+"','"+DepName+"')";
              nResult = Stmt.executeUpdate(sql);
              if(nResult==1)
              nResult=1;      
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
  	// ��ѯ���ŵ���Ϣ
	public Vector queryDepartments()throws Exception
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
			String sql = "SELECT DepId,DepName FROM Departments ";
			sql = sql + " ORDER BY DepId ASC";
			rs = st.executeQuery( sql );
			while( rs.next() )
			{
			    Departments  Dep = new Departments(rs.getString(1),rs.getString(2));
                vt.add(Dep);
			}
		}
		catch( SQLException ex )
		{
			ex.printStackTrace( System.err );
		}
		finally
		{
			database.close( rs, st, conn );
		}
		return vt;
	}
	   //���ղ��ŵı�Ž��в�ѯĳһ�����ŵ���ϸ��Ϣ
   public Departments getDepartmentsDetails(String DepId) throws Exception {
    Connection con=null;
    PreparedStatement prepStmt=null;
    DataBase database = new DataBase();
    ResultSet rs =null;
    try {
      con=database.getConnection();
      String selectStatement = "select * " + "from Departments where DepId = ? ";
      prepStmt = con.prepareStatement(selectStatement);
      prepStmt.setString(1, DepId);
      rs = prepStmt.executeQuery();
      if (rs.next()) {
                      Departments bd = new Departments(rs.getString(1), rs.getString(2));
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
  //���ղ��ŵı�Ž����޸�ĳһ�����ŵ���ϸ��Ϣ
  public int updateDepartments(String DepId,String DepName)  throws Exception                  
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "Update Departments set DepId='"+DepId+"', DepName='"+DepName
         +"' where DepId='"+DepId+"'";
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
  //ɾ��һ�����ŵ�������Ϣ
  public int deleteOneDepartments(String DepId) throws Exception 
    {
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT DepId FROM Employees WHERE DepId='"+DepId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
    	      nResult=2; 
             }
         else
            {
              sql="DELETE  from Departments where DepId='"+DepId+"'";
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