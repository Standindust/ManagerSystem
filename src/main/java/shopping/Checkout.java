package shopping;
public class Checkout implements Comparable{ 
        private String ProId = null;		
        private String ProName = null;	
        private String TypeId = null;	
        private String ProUnit = null;     
        private float   ProPrice = 0.0F;
        private float   NowPrice = 0.0F;	
        private int Quantity = 0;
       
   public  void Checkout(){
              ProId="";		
              ProName="";	
              TypeId="";	
              ProUnit = "" ;     
              ProPrice = 0;
              NowPrice = 0;	
              Quantity = 0;
               }
            
  Checkout(String ProId,String ProName,String TypeId ,String ProUnit,
	    float ProPrice,float NowPrice,int Quantity){
      	this.ProId = ProId;
      	this.ProName = ProName;
      	this.TypeId = TypeId;
      	this.ProUnit = ProUnit;
      	this.ProPrice = ProPrice;
      	this.NowPrice = NowPrice ;
      	this.Quantity = Quantity;
      	}
         
        
        public void setProId(String newProId){
                this.ProId = newProId;
        }
        public String getProId(){
                return ProId;
        }
        public void setProName(String newProName) {
                this.ProName = newProName;
        }
        public String getProName() {
                return ProName;
        }
        public void setTypeId(String newTypeId) {
                this.TypeId = newTypeId;
        }
        public String getTypeId() {
                return TypeId;
        }
        public void setProUnit(String newProUnit) {
                this.ProUnit = newProUnit;
        }
        public String getProUnit() {
                return ProUnit;
        }
        public void setProPrice(float newProPrice) {
                this.ProPrice = newProPrice;
        }
        public float getProPrice() {
                return ProPrice;
        }
        public void setNowPrice(float newNowPrice) {
                this.NowPrice = newNowPrice;
        }
        public float getNowPrice() {
                return NowPrice;
        }

        public void setQuantity(int newQuantity) {
                this.Quantity = newQuantity;
        }
        public int getQuantity() {
                return Quantity;
        }
       ////////////////////////////////////////////
       
        public int compareTo(Object o){
         Checkout n = (Checkout)o;
      	int lastCmp = ProName.compareTo(n.ProName);
      	return(lastCmp);
      	}
      	
}
