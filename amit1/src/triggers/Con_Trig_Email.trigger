/* 1. Create  a custom Lookup field on Contact object 
 *  FieldName : Manager 
 *  DataType  : Lookup(user)
 * 2. When ever new contact is created send email notification to the contacts Managers email addresss
 */
trigger Con_Trig_Email on Contact (before insert) {
    Set<Id> userids=new Set<Id>(); // Same user can be manager for multiple contacts 
    // Get all the Ids of the users who are managers to the new Contact which are in trigger.new 
    for(Contact c:Trigger.new){
        // Manager is a lookup field ,Lookup field will store id of the parent
        userIds.add(c.Manager__c);
    }
    // Create a map with Userid as key and Email address as value
    Map<Id,String> userMail=new Map<Id,String>();
    // Get the email address of all the users who are managers to the contact
    List<User> users =[select id ,email from User where Id In:userIds];
    for(user u :users){
        userMail.put(u.id,u.email);
    }
    List<Messaging.Email> emails =new List<Messaging.Email>();
    for(Contact c: Trigger.new){
        Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
        // Pass the Manager id and the email address of the user 
        String email=userMail.get(c.manager__c);
        String[] toadd=new String[]{email};
        msg.setToAddresses(toadd);
        msg.setSubject('Test Email');
        msg.setPlainTextBody('This is a test email creatd by Contact'+c.lastname);
        emails.add(msg);
    }
    Messaging.sendEmail(emails);
}