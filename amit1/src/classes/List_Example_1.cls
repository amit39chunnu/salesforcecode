public class List_Example_1 {
    public List<Account> accounts {set;get;}
    public List_Example_1(){
        accounts=new List<Account>();
        Account a1=new Account();
        a1.Name='Wipro';
        a1.Phone='1111';
        a1.Industry='Banking';
        accounts.add(a1); // add the account to the list
        Account a2=new Account();
        a2.Name='TCS';
        a2.Phone='2222';
        a2.industry='Energy';
        accounts.add(a2); // add the account to the list
        Account a3=new Account();
        a3.Name='Dell';
        a3.Phone='3333';
        a3.Industry='Education';
        accounts.add(a3);
        Account a =accounts.get(1);
    }

}