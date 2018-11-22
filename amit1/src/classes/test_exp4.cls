@isTest
private class test_exp4 {
	@istest
    static void testme(){
        Lead l1=new Lead();
        l1.LastName='Amit';
        l1.FirstName='kumar';
        l1.Company='capital';
        l1.LeadSource='web';
        insert l1;
        Lead leads=[select rating from Lead where id=:l1.Id];
        System.assertEquals('Hot', leads.Rating);
    }
}