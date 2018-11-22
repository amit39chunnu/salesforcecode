@isTest
private class test_exp5 {
    testmethod static void testme(){
    	Account acc=new Account();
    	acc.Name='amit';
    	acc.Phone='1111';
    	acc.Type='prospect';
    	acc.rating='hot';
    	insert acc;
    	Test.startTest();
    	exp5 e=new exp5();
    	Id jobId=Database.executeBatch(e, 5);
    	Test.stopTest();
        Account a=[select ownership from Account where id=:acc.id];
        System.assertEquals('Public', a.ownership);
    }
        

}