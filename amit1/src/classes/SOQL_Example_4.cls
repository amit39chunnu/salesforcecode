public class SOQL_Example_4 {
    public List<SelectOption> options 	{set;get;}
    public List<SelectOption> operators {set;get;}
    public List<Account> accounts 		{set;get;}
    public String value					{set;get;}
    public String fldSelected			{set;get;}
    public String optSelected			{Set;get;}
    public SOQL_Example_4(){
        List<String> fields =new List<String>{'Name','Industry','Phone','Rating','Ownership'};
        List<String>  symbols=new List<String>{'=','!=','<','>'};
        SelectOption op=new SelectOption('none','-None-');
        options=new List<SelectOption>();
        operators=new List<SelectOption>();
        options.add(op);
        operators.add(op);
        // Take one by one fields from the list and create an option
        for(String s1:fields){
            SelectOption op1=new SelectOption(s1,s1);
            options.add(op1);
        }
        // Take one by one symbol from the list of symbos and create an option
        for(String s2:symbols){
            SelectOption op2=new SelectOption(s2,s2);
            operators.add(op2);
        }
    }
    public void search(){
        String query='select name,phone,industry,rating from Account';
        if(fldSelected!='none'){
       		query=query+' where '+fldSelected+''+optSelected+'\''+value+'\''; 
        }
        accounts=Database.query(query);
    }
}