public class Dml_opera2 {
    public Account acc	{set;get;}
    public Contact con	{set;get;}
    public Blob body	{set;get;}
    public String name	{set;get;}
    public Dml_opera2(){
        acc=new Account();
        con=new Contact();
    }
    public Pagereference create(){
        insert acc;
      	con.AccountId=acc.Id;
        insert con;
        Attachment a=new Attachment();
        a.parentid=acc.id;
        a.name=name;
        a.Body=body;
        insert a;
        Pagereference p=new Pagereference('/'+acc.Id);
        return p;
    }

}