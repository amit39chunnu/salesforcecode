public class Governing_Example {
    public void soql_Example(){
        for(Integer i=1;i<=60;i++){
            List<Account> accounts =[select id,name from Account];
        }
        for(Integer j=1;j<=60;j++){
            List<Contact> contacts=[select id,lastname,firstname from Contact];
        }
    }
    public void dml_Example(){
        for(Integer i=1;i<=100;i++){
            Account a=new Account();
            a.Name='Testing';
            a.Phone='1111';
            insert a;
        }
        for(Integer j=1;j<=60;j++){
           Contact c=new Contact();
           c.LastName='Testing';
           c.FirstName='Testing';
           insert c;
        }
    }
    public void dml_Rows(){
        List<Account> accs=new List<Account>();
        for(Integer i=1;i<=5000;i++){
            Account a=new Account();
            a.Name='Testing';
            a.Phone='1111';
            accs.add(a);
        }
        insert accs;
        update accs;
        delete accs;
    }
}