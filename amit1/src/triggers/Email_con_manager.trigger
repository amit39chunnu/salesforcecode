trigger Email_con_manager on Contact (before insert) {
    Set<Id> userids=new Set<Id>();
    for(Contact c:Trigger.New){
        userids.add(c.Manager__c);
    }
    Map<Id,String> usermail=new Map<Id,String>();
    List<User> users=[select id,email from User where id In:userids];
    for(User u:users){
       usermail.put(u.id,u.email); 
    }
    List<Messaging.Email> emails=new List<messaging.Email>();
    for(Contact c:Trigger.new){
        Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
        String email=usermail.get(c.Manager__c);
        String[] toadd=new String[]{email};
        msg.setToAddresses(toadd);
        msg.setSubject('this is test email');
        msg.setPlainTextBody('this is new contact whose last name is:'+c.LastName);
        emails.add(msg);
    }
    Messaging.sendEmail(emails);
}