public class Dml_opera {	
    public void call(){
        List<Contact> con=new List<Contact>();
        for(Contact c:con){
            if(c.LeadSource=='web'){
                c.Phone='9798665208';
            }
            update c;
        }
    }
}