package departments;

/**
 * ������
   */

public class Departments {
        private String DepId;		//���ŵı��
        private String DepName;	//���ŵ�����
        
        /**
         * ���ŵĳ�ʼ��
         */
      Departments(String DepId,String DepName)
          {
                this.DepId =DepId;
                this.DepName = DepName;       
          }
        public void setDepId(String newId){
                this.DepId = newId;
        }
        public String getDepId(){
                return DepId;
        }
        public void setDepName(String newDepName) {
                this.DepName = newDepName;
        }
        public String getDepName() {
                return DepName;
        }
  
}
