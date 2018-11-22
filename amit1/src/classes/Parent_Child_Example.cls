public class Parent_Child_Example {
 
    public List<Account> accounts {set;get;}
    public List<Account_List> myList  {Set;get;}
    public Parent_Child_Example(){
        accounts =[select Name,Industry ,(select lastname,firstname from Contacts),(select name,stagename from Opportunities) from Account];
        myList=new List<Account_List>();
        for(Account a :accounts){
            Account_List al=new Account_List();
            al.acc=a;
            al.contacts=a.contacts;
            al.optyList=a.opportunities;
        }
    }
}