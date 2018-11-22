trigger con_trig on Account (after insert) {
    List<Contact> con=new List <Contact>();
    for(Account a:Trigger.New){
        if(a.Industry=='Banking'){
            Contact c=new Contact();
            c.lastname=a.Name;
            c.LeadSource='web';
            c.AccountId=a.Id;
            con.add(c);
        }
        insert con;
    }

}