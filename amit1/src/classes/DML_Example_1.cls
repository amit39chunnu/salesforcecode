public class DML_Example_1 {
    public String accName  		{set;get;}
    public String phone 		{set;get;}
    public String industry 		{Set;get;}
    public String rating		{Set;get;}
    public PageReference create(){
        Integer count=[select count() from Account where name=:accName];
        // if the count is greater than zero there are some duplicate records in the database with same name
        if(count > 0){
           Apexpages.Message msg =new Apexpages.Message(Apexpages.Severity.Error,'Duplicate record exits');
           Apexpages.addMessage(msg);
           return null;
        }else{
            Account acc =new Account();
            acc.Name=accName;
            acc.Phone=phone;
            acc.Industry=industry;
            acc.Rating=rating;
            insert acc;
            PageReference p=new PageReference('/'+acc.Id);
            return p;
        }
    }
}