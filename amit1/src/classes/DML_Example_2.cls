public class DML_Example_2 {
    public Account acc 	{set;get;}
    public Contact con 	{set;get;}
    public Blob body  	{set;get;}
    public String name  {set;get;}
    public DML_Example_2(){
        acc=new Account();
        con=new Contact();
    }
    /*
     *  Fields :  ParentId ,Body,Name :
	  	ParentId : Id of the record for which attachment should be added 
	  	Body     : Body of the field which we want to attachh ( body will be blob)
	  	Name     : Name of the file which we want to attach
	*/
    public PageReference create(){
        insert acc;
        con.accountId=acc.Id;
        insert con;
        Attachment a=new Attachment();
        a.parentId=acc.Id; // Id of the record to which attachment should be added
        a.Name=name;
        a.body=body;
        insert a;
        PageReference p=new PageReference('/'+acc.Id);
        return p;
    }
    
}