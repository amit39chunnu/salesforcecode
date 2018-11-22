@isTest
private class test_exp3 {
    @istest
    static void testme(){
        exp3 e=new exp3();
        e.name='testing';
        e.industry='banking';
        e.show();
        Account acc1=[select name,phone,ownership from Account where id=:e.acc.id];
        System.assertEquals('testing', acc1.name);
        System.assertEquals('1234', acc1.Phone);
        System.assertEquals('Public', acc1.Ownership);
        exp3 e1=new exp3();
        e1.name='testing';
        e1.industry='energy';
        e1.show();
        Account acc2=[select name,phone,ownership from Account where id=:e1.acc.id];
        System.assertEquals('testing', acc2.Name);
        System.assertEquals('1111', acc2.Phone);
        System.assertEquals('private', acc2.Ownership);
        
    }

}