
package evaluation;


import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;
import common.*;


public class EvaluationBean
{
	//插入员工考勤信息的信息
   public int InsertEvaluation(String EvaId,String EmpId,String EvaDate,
          String Subject,String Result,String Score,String Memo,String EmpName) throws Exception  
              
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT EmpId FROM Employees WHERE (EmpId='"+EmpId+"')and (EmpName='"+EmpName+"')"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
               sql = "SELECT EvaId FROM Evaluation WHERE EvaId='"+EvaId+"'"; 
               rs = Stmt.executeQuery( sql );
                if(rs.next())
                   {
                 	nResult = 3;  //存在重复的编号
                  }
                else
                   {
                    sql= "insert into Evaluation( EvaId,EmpId,EvaDate,Subject,Result,Score,Memo) values('"
                          +EvaId+"','"+EmpId+"','"+EvaDate+"','"+Subject+"','"+Result+"','"+Score+"','"+Memo+"')";
                    nResult = Stmt.executeUpdate(sql); 
                    //nResult=1是添加成功
                 
                	}
               	
            }
         else
           { 
              nResult=2; //不存在该员工
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
  //删除一个某一个具体的考勤信息
  public int deleteOneEvaluation(String EvaId) throws Exception 
    {
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT EvaId FROM Evaluation WHERE EvaId='"+EvaId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
             sql="DELETE  from Evaluation where EvaId='"+EvaId+"'";
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
   //更新一个员工考勤的基本信息
 public int updateEvaluation(String EvaId,String EmpId,String EvaDate,String Subject,String Result,
       String Score,String Memo) throws Exception                  
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "UPDATE Evaluation set EvaId='"+EvaId+"', EmpId='"+EmpId+"',EvaDate='"+EvaDate+"',Subject='"
                    +Subject+"',Result='"+Result+"',Score='"+Score+"',Memo='"+Memo+"' where EvaId='"+EvaId+"'";
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
  // 查询所有的员工考勤的信息
	public Vector allEvaluationInfor()throws Exception
	{
		Vector vt = new Vector();
	
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		DataBase database = new DataBase();
		try
	    	{
	    //	vt=null;
			conn = database.getConnection();
			st = conn.createStatement();
			String sql = "SELECT EvaId,EmpId,EvaDate,Subject,Result,Score, Memo FROM Evaluation ";
			sql = sql + " ORDER BY EvaId ASC";
			rs = st.executeQuery( sql );
		    	while( rs.next() )
		          	{
				
				Evaluation  evaluation = new Evaluation(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7));
                vt.add(evaluation);

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
     // 查询一个员工的所有考勤的信息
	public Vector allOneEmployeeEvaluationInfor(String EmpId)throws Exception
	{
		Vector vt = new Vector();
	//	 vt = null;
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		DataBase database = new DataBase();
		try
	    	{
	       
			conn = database.getConnection();
			st = conn.createStatement();
			String sql = "SELECT EvaId,EmpId,EvaDate,Subject,Result,Score, Memo FROM Evaluation where EmpId='"+EmpId+"'";
			sql = sql + " ORDER BY EvaId ASC";
			rs = st.executeQuery( sql );
		    	while( rs.next() )
		          	{
				
				Evaluation  evaluation = new Evaluation(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7));
                vt.add(evaluation);

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
 //按照员工的编号进行查询某一个员工的考勤详细信息
   public Evaluation getEvaluationDetails(String EvaId) throws Exception {
    Connection con=null;
    PreparedStatement prepStmt=null;
    DataBase database = new DataBase();
    ResultSet rs =null;
    try {
      con=database.getConnection();
      String selectStatement = "select EvaId,EmpId,EvaDate,Subject,Result,Score,Memo " + "from Evaluation where EvaId = ? ";
      prepStmt = con.prepareStatement(selectStatement);
      prepStmt.setString(1, EvaId);
      rs = prepStmt.executeQuery();
      if (rs.next()) {
                      Evaluation bd = new Evaluation(rs.getString(1), rs.getString(2), 
                                           rs.getString(3),rs.getString(4),rs.getString(5),
                                           rs.getString(6),rs.getString(7));
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
   //按照员工的编号以及考勤编号进行查询某一个员工的考勤详细信息
	public Evaluation getEvaluationDetailsEmpId(String EvaId,String EmpId) throws Exception
	{

		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		DataBase database = new DataBase();
		try
	    	{
			conn = database.getConnection();
			st = conn.createStatement();
			String sql = sql = "select EvaId,EmpId,EvaDate,Subject,Result,Score,Memo from Evaluation where (EvaId ='"+EvaId+"')and(EmpId='"+EmpId+"')";
			sql = sql + " ORDER BY EvaId ASC";
			rs = st.executeQuery( sql );

      if (rs.next()) {
                      Evaluation bd = new Evaluation(rs.getString(1), rs.getString(2), 
                                           rs.getString(3),rs.getString(4),rs.getString(5),
                                           rs.getString(6),rs.getString(7));
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
               database.closeConnection(conn);
            }

    }
}