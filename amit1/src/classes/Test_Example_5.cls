@isTest
public class Test_Example_5 {
	@isTest
    static void callMe(){
        Example_5 e =new Example_5();
        e.LastName='T';
        e.FirstName='Kiran';
        e.create();
        Integer count =[select count() from Contact where lastname=:e.lastName and firstName=:e.FirstName];
        System.assertEquals(count,1);
        e.deleteAcc();
        Integer size=[select count() from Contact where createdDate=TODAY];
        System.assertEquals(count,0);
    }
    
}