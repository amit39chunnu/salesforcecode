public class Recursive_Trigger_Example {
    public Static Boolean flag=true;
    public static void beforeInsert(){
        if(flag==true){
            flag=false;
        	Account acc =new Account();
        	acc.Name='Testing';
        	acc.Phone='1111';
        	insert acc;
            
        }
    }
}