@isTest
private class test_exp2 {
	@isTest
    static void testme(){
        exp2 e=new exp2();
        e.industry='banking';
        e.call();
        System.assertEquals('hot', e.rating);
        System.assertEquals('public',e.ownership);
        exp2 e1=new exp2();
        e1.industry='energy';
        e1.call();
        System.assertEquals('warm', e1.rating);
        System.assertEquals('private', e1.ownership);
        
    }
}