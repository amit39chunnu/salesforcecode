public class Insert_List_Cont_onAcc {
    public Account acc			{set;get;}
    public List<Contact> con	{set;get;}
    public Insert_List_Cont_onAcc(){
        acc=new Account();
        con=new List<Contact>();
        add();
    }
    public void add(){
        Contact c1=new Contact();
        con.add(c1);
        
    }
    public Pagereference save(){
        insert acc;
        for(Contact c:con){
            c.AccountId=acc.Id;            
        }
        insert con;
        Pagereference p=new Pagereference('/'+acc.id);
        return p;
        
    }
}