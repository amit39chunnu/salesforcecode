/* When ever Stagename is modified to closed won then share the record with Manager with read access */
trigger Opty_Team_Example on Opportunity (after update) {
    // Old version of recrods are in oldMap
    Map<Id,Opportunity> oldMap =Trigger.oldMap;
    // New version of modified records are in newMap
    Map<Id,Opportunity> newMap =Trigger.newMap;
    // Get the Set recordIds
    Set<Id> keys =oldMap.keySet();
    List<OpportunityShare> share =new List<OpportunityShare>();
    for(Id k:keys){
        // Compare stagename of oldValue and newValue ,if both are not same and new stagename is Closed won
        // then share the record
        Opportunity old=oldMap.get(k);
        Opportunity opt=newMap.get(k);
        if(old.stagename!='Closed won' && opt.stagename=='Closed Won'){
            // Share the record with Manager with Read access 
            OpportunityShare os=new OpportunityShare();
            os.OpportunityId=k;
            os.OpportunityAccessLevel='Read';
            os.UserOrGroupId=opt.Manager__c;
            os.RowCause='Manual';
            share.add(os);  
        }
    }
    insert share; 
}