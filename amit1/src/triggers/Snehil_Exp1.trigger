trigger Snehil_Exp1 on Account (after delete) {
    List<Details__c> details=new List<Details__c>();
    for(Account a:Trigger.old){
        Details__c d=new Details__c();
        d.User_Name__c=UserInfo.getUserName();
        d.Account_Name__c=a.Name;
        d.Date_Time__c=System.now();
        details.add(d);
    }
    insert details;
}