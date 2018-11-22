@isTest
public class Test_Example_3 {
	@isTest
    static void testMe(){
        Example_3 e =new Example_3();
        e.industry='Banking';
        e.invoke();
        System.assertEquals(e.rating,'Hot');
        System.assertEquals(e.ownership,'Public');
        e.industry='Energy';
        e.invoke();
        System.assertEquals(e.rating,'Warm');
        System.assertEquals(e.ownership,'Private');
    }
}