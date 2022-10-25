package evaluation;
public class Evaluation { 
      private String EvaId;
      private String EmpId;
      private String EvaDate;              
      private String Subject;
      private String Result;
      private String Score;
      private String Memo;

	 Evaluation(String EvaId,String EmpId,String EvaDate ,String Subject,
	  String Result,String Score,String Memo){
      	this.EvaId = EvaId;
      	this.EmpId = EmpId;
      	this.EvaDate = EvaDate;
      	this.Subject = Subject;
      	this.Result = Result;
      	this.Score = Score;
      	this.Memo = Memo;
      	}

////////////////////////////////////////////////////////////////////
      public void setEvaId(String newEvaId){
      	this.EvaId = newEvaId;
      	}
      public String  getEvaId(){
      	return EvaId; 
      	}
      public void setEmpId(String newEmpId){
      	this.EmpId = newEmpId;
      	}
      public String getEmpId(){
      	return EmpId;
      	}
      public void setEvaDate(String newEvaDate){
      	this.EvaDate = newEvaDate;
      	}
      public String  getEvaDate(){
      	return EvaDate; 
      	}
      	
      public void setSubject(String newSubject){
      	this.Subject = newSubject;
      	}
      public String getSubject(){
      	return Subject;
      	}
      public void setResult(String newResult){
      	this.Result = newResult;
      	}
      public String  getResult(){
      	return Result; 
      	}
      	
      public void setScore(String newScore){
      	this.Score = newScore;
      	}
      public String getScore(){
      	return Score;
      	}
      public void setMemo(String newMemo){
      	this.Memo = newMemo;
      	}
      public String getMemo(){
      	return Memo;
      	}
	
}	
    


////////////////////////////////////////////////////////////////////
