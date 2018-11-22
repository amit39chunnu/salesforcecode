public class Customer_exp1 {
    
    public void call(){
        List<Customer__c> cust=new List<Customer__c>();
        //Customer__c c=new Customer__c(Name='Amit',Phone__c='1234',City__c='Hyd');
        //cust.add(c);
        for(Integer i=1;i<=20;i++){
            Customer__c c=new Customer__c(Name='Testing'+String.valueof(i),Phone__c='1234'+String.valueof(i),City__c='Hyd'+String.valueof(i));
            cust.add(c);
            break;
        }
        insert cust;
        
    }

}