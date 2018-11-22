@isTest
private class test_exp1 {
    @isTest
    static void testme(){
        exp1 e=new exp1();
        e.show();
        System.assertEquals('Amit', e.name);
        System.assertEquals('computer',e.branch);
    }

}