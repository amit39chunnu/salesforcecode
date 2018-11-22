@isTest
private class Test_Snehil_Exp1 {
	@isTest
    static void testme(){
        Account a=new Account();
        a.Name='Amit';
        a.Phone='1111';
        insert a;
        Account acc=[select id,name,phone from Account where id=:a.id];
        delete acc;
        Details__c d=new Details__c();
        d.User_Name__c=UserInfo.getUserName();
        d.Account_Name__c=a.Name;
        d.Date_Time__c=System.now();
        insert d;
        Details__c del=[select id,User_Name__c,Account_Name__c,Date_Time__c from Details__c where Id=:d.Id];
        //System.assertEquals('UserInfo.getUserName()',del.User_Name__c);
        System.assertEquals(a.Name, del.Account_Name__c);
        System.assertEquals(System.now(), del.Date_Time__c);
    }
}