trigger ContactCount on Contact (after insert) {
	Set<Id> accid=new Set<Id>();
    List<Contact> listcon =new List<Contact>();
    List<Contact> conlist=new List<Contact>();
    List<Account> acclist=new List<Account>();
    List<Account> listacc=new List<Account>();
    Map<Id,Integer> countmap=new Map<Id,Integer>();
    if(Trigger.isinsert){
        for(Contact c:Trigger.New){
            accid.add(c.AccountId);
        }
    }
    acclist=[select id,name from Account where id in:accid];
    conlist=[select id,name,AccountId from Contact where AccountId In: accid];
    for(Account a:acclist){
        listcon.clear();
        for(Contact c:conlist){
            if(c.Accountid==a.id){
                listcon.add(c);
                countmap.put(c.AccountId,listcon.size());
            }
        }
    }
    if(acclist.size()>0){
		for(Account a:acclist){
		if(countmap.get(a.id)==null)
		a.No_of_Contact__c =0;
        else{
		a.No_of_Contact__c =countmap.get(a.id);
		listacc.add(a);
		}
	}
        if(listacc.size()>0){}
	update listacc;
	}
}