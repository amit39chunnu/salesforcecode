/* When the opportunity stagename is modified to closed won then set closeDate as Today and 
 * Type as New Customer 
 */
trigger Opty_Trigger_Example on Opportunity (before update) {
    Map<Id,Opportunity> oldMap=Trigger.oldMap;
    Map<Id,Opportunity> newMap=Trigger.newMap;
    Set<Id> keys =oldMap.keySet();
    for(Id k :keys){
        Opportunity old=oldMap.get(k);
        Opportunity opt=newMap.get(k);
        if(old.stageName!='Closed won' && opt.stagename=='Closed Won'){
            opt.type='New Customer';
            opt.CloseDate=System.today();
        }
    }
}