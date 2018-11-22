@isTest
public class Test_Example_2 {
	@isTest
    static void testMe(){
        Example_2 e=new Example_2();
        e.call();
        System.assertEquals(e.city,'Hyd');
        System.assertEquals(e.amount,10000);
        System.assertEquals(e.industry,'Banking');
    }
}