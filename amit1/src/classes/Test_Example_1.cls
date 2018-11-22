@isTest
private class Test_Example_1 {
	@isTest
    static void testMe(){
        Example_1 e =new Example_1();
        e.call();
        System.assertEquals('Satish Myla',e.name);
    }
}