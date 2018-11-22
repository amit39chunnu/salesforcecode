@isTest
public class Test_Example_7 {
	@isTest
    static void call(){
        Account acc =new Account();
        acc.Name='Testing';
        acc.Phone='1111';
        acc.Industry='Banking';
        insert acc;
        String exp='0 0 10 15 5 ?';
        Test.startTest();
        	Schedule_Example se =new Schedule_Example();
        	Id job=System.schedule('Testing',exp,se);
        Test.stopTest();
        Integer count =[select count() from Account where createdDate=TODAY];
        System.assertEquals(count,0);
        CronTrigger ct=[select id,cronExpression from CronTrigger where Id=:job];
        System.assertEquals(ct.CronExpression,exp);
    }
}