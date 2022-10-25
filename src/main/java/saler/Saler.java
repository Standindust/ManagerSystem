package saler;
public class Saler { //implements Comparable
      private String SalerId;
      private String SalerName;
      private String Sex;
      private String Title;
      private String Office;
      private String Mobile;
      private String Hobby;
      private String Memo;
      private String SupId;
      
    Saler(String SalerId,String SalerName,String Sex,String Title,String Office,
       String Mobile,String Hobby,String Memo,String SupId)
       {
       	this.SalerId = SalerId;
      	this.SalerName = SalerName;
      	this.Sex = Sex;
      	this.Title = Title;
      	this.Office= Office;
      	this.Mobile = Mobile ;
      	this.Hobby= Hobby;
      	this.Memo = Memo;
      	this.SupId = SupId;
      	} 
      public void setSalerId(String newSalerId){
      	this.SalerId = newSalerId;
      	}
      public String  getSalerId(){
      	return SalerId; 
      	}
      public void setSalerName(String newSalerName) {
                this.SalerName = newSalerName;
        }
      public String getSalerName() {
                return SalerName;
        }
      public void setSalerSex(String newSex) {
                this.Sex = newSex;
        }
      public String getSalerSex() {
                return Sex;
        }
      public void setSalerTitle(String newTitle) {
                this.Title = newTitle;
        }
      public String getSalerTitle() {
                return Title;
        }
      public void setSalerOffice(String newOffice) {
                this.Office = newOffice;
        }
      public String getSalerOffice() {
                return Office;
        }
            public void setSalerMobile(String newMobile) {
                this.Mobile = newMobile;
        }
      public String getSalerMobile() {
                return Mobile;
        }
      public void setSalerHobby(String newHobby) {
                this.Hobby = newHobby;
        }
      public String getSalerHobby() {
                return Hobby;
        }
     public void setSalerMemo(String newMemo) {
                this.Memo = newMemo;
        }
        public String getSalerMemo() {
                return Memo;
        }
      public void setSupId(String newSupId){
      	this.SupId = newSupId;
      	}
      public String  getSupId(){
      	return SupId; 
      	}
	}
	
    


////////////////////////////////////////////////////////////////////
