trigger con2Trigger on Contact (before update) {
    Map<id,Contact> oldmap=Trigger.oldmap;
    Map<id,Contact> newmap=Trigger.newmap;
    Set<id> keys=oldmap.keyset();
    for(id i: keys){
            Contact oldval=oldmap.get(i);
            Contact newval=newmap.get(i);
            Account a=new Account();
            if(oldval.id==a.Id){
                a.Total_salary__c=a.Total_salary__c+newval.Salary__c;
            }  
    }
    
}