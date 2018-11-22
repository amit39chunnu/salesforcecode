/* When ever a new Account is created with industry as Banking then Create new Opportunity for the Account 
 *  with account Names Opportunity Name ,stagename as Prospect and CloseDate as 15 days from today 
 */
trigger Account_Opty_Creation on Account (after insert) {
    /* Trigger.New : It will contain list of all the new records which are created successfully */
    List<Opportunity> opty=new List<Opportunity>();
    for(Account a :Trigger.New){
        if(a.industry=='Banking'){
           Opportunity op=new Opportunity();
           op.Name=a.Name;
           op.StageName='Prospect';
           op.closeDate=System.today()+15;
           op.accountId=a.id;
           opty.add(op);
        }  
        insert opty;
    }
}