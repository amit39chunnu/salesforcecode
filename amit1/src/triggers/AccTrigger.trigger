trigger AccTrigger on Account (before update) {
    Map<id,Account> oldmap=Trigger.oldmap;
    Map<id,Account> newmap=Trigger.newmap;
    Set<id> keys=oldmap.keyset();
    List<Account> acc=new List<Account>();
    for(id i: keys){
            Account oldval=oldmap.get(i);
            Account newval=newmap.get(i);
            Contact c=new Contact();
            if(c.id==oldval.id){
                newval.Total_salary__c=newval.Total_salary__c+c.Salary__c;
            }  
        acc.add(newval);
    }
    update acc;
    
}