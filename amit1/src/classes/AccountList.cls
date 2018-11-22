public class AccountList {
    public List<AccountData> accounts {set;get;}
    public Account newAcc			  {set;get;}
    public AccountList(){
        accounts =new List<AccountData>();
        newAcc=new Account();
    }
    public void add(){
       AccountData ad =new AccountData();
        ad.acc=newAcc;
        ad.flag=false;
        accounts.add(ad);
        newAcc=new Account();
        
    }
}