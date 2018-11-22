trigger Email_con on Contact (before insert) {
    List<Messaging.Email> emails=new List<Messaging.Email>();
    for(Contact c:Trigger.New){
        Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
        String email=c.Email;
        String[] toadd=new String[]{email};
        msg.setToAddresses(toadd);
        msg.setSubject('test mail');
        msg.setPlainTextBody('Your new contact created as Last name is : '+c.LastName);
        emails.add(msg);
    }
    Messaging.sendEmail(emails);

}