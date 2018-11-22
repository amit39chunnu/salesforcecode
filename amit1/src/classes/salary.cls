public class salary {
    public static void afterinsert(List<Contact> con){
        Set<id> ids=new Set<id>();
    for(Contact c:con){
        ids.add(c.Accountid);
    }
    Map<id,Account> acc=new Map<id,Account>([Select id,Total_Salary__c from Account where id in:ids]);
    Set<id> accids=new Set<id>();
    List<Account> newAcc=new List<Account>();    
    for(Contact c:con){        
        if (acc.containsKey(c.AccountId))     	
        {
            Account a=acc.get(c.AccountId);        
            if(c.AccountId==a.Id){            
                if(a.Total_salary__c==null||a.Total_salary__c==0){
                    a.Total_salary__c=c.Salary__c;
                }else{
                    a.Total_salary__c=a.Total_salary__c + c.Salary__c;
                }
                newAcc.add(a);
            }
            
        }
    }
   
    update newAcc;
    }
    public static void afterupdate(Map<id,Contact> oldmap,Map<id,Contact> newmap){
        Set<id> keys=oldmap.keyset();        
        Map<id,Account> acc=new Map<id,Account>([Select id,Total_Salary__c from Account where id in:keys]);
        List<Account> newAcc=new List<Account>();
        for(id i:keys){
            Contact oldval=oldmap.get(i);
            Contact newval=newmap.get(i);
            
            
            if (acc.containsKey(oldval.AccountId)){
                Account a=acc.get(oldval.AccountId);
            
        		if(oldval.AccountId==a.Id){            
                	if(a.Total_salary__c==null||a.Total_salary__c==0){
                    	a.Total_salary__c=newval.Salary__c;
                
                	}else{
                   	 a.Total_salary__c=(a.Total_salary__c+ newval.Salary__c)-oldval.Salary__c;
                	}
               	 newAcc.add(a);
            	}
            }
    	}
        update newAcc;
    }

}