trigger ContactCount2 on Contact (after insert) {
    set<id> accid=new set<id>();
    List<Account> acclist=new List<Account>();
    List<Account> listacc=new List<Account>();
    List<Contact> conlist=new List<Contact>();
    List<Contact> listcon=new List<Contact>();
    Map<id,integer> countmap=new Map<id,integer>();
    if(Trigger.isinsert){
        for(Contact c:Trigger.new){
            accid.add(c.AccountId);
        }
    }
    acclist=[select id from Account where id in:accid];
    conlist=[select id from contact where Accountid in:accid];
    for(Account a:acclist){
        for(Contact c:conlist){
            if(c.AccountId==a.Id){
                listcon.add(c);
                countmap.put(c.Accountid,listcon.size());
            }
            
        }
        a.No_of_Contact__c =countmap.get(a.id);
        listacc.add(a);
    }
    
    update listacc;
    

}