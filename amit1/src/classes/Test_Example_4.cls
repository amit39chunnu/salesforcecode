@isTest
public class Test_Example_4 {
    testmethod static void testMe(){
        Example_4 e =new Example_4();
        e.LeadSource='Web';
        e.call();
        System.assertEquals(e.rating,'Hot');
        System.assertEquals(e.amount,10000);
        e.leadSource='Email';
        e.call();
        System.assertEquals(e.rating,'Warm');
        System.assertEquals(e.amount,20000);
        
    }	
}