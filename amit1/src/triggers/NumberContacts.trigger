Trigger NumberContacts on Contact(after update,after insert){
    Set<ID> accids=New Set<ID>();
    For(contact c:trigger.new){
        Accids.add(c.AccountId);
    }

    Map<ID,Account> Acc= new Map<ID,Account>([Select ID, No_of_Contacts_SFDC__c from account where id IN:accids ]);
    Map<ID,Account> updateMap = new Map<ID,Account>();
    for(Account ac :Acc.values())
    {
        Integer count = 0;
        for(Contact c:Trigger.New){
            if(ac.Id == c.AccountId)
                count = count + 1;
            
        }
        ac.No_of_Contacts_SFDC__c= count;
        updateMap.put(ac.Id,ac);
    }

    if(!updateMap.isEmpty())
        update updateMap.values();
}