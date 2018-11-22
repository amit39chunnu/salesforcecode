public class SOQL_Example_3 {
    public List<Account_Wrapper> accounts {set;get;}
    public String searchText			  {set;get;}
    public SOQL_Example_3(){
        accounts =new List<Account_Wrapper>();
    }
    public void search(){
        
        // write a query to fetch all the account records based on searchText
        List<Account> accList=[select id,name,phone,industry,rating,ownership from Account where name=:searchText OR industry=:searchText];
        // For every account record create one AccountWrapper and add then to list.
        for(Account a: accList){
            Account_Wrapper aw=new Account_Wrapper();
            aw.acc=a;
            aw.flag=false;
            accounts.add(aw);
        } 
    }
}