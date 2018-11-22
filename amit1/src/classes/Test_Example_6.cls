@isTest
public class Test_Example_6 {
	@isTest
    static void call(){
        Account a=new Account();
        a.Name='Testing';
        a.Phone='1111';
        insert a;
        Test.startTest();
        Batch_Example be =new Batch_Example();
        	Id job=Database.executeBatch(be);
        Test.stopTest();
        Account acc=[select id,Rating,Ownership from Account where id=:a.id];
        System.assertEquals(acc.Rating,'Hot');
        System.assertEquals(acc.Ownership,'Public');
    }
}