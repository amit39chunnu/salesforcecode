@isTest
public class Test_Example_8 {
	@isTest
    static void callMe(){
        Contact c=new Contact();
        c.LastName='K';
        c.FirstName='Praveen';
        insert c;
        Contact con=[select id,otherphone,phone from Contact where id=:c.Id];
        System.assertEquals(con.otherPhone,'7777');
        System.assertEquals(con.phone,'9999');
    }
}