public class Dml_error {
    public String accname	{set;get;}
    public String phone	{set;get;}
    public String rating	{set;get;}
    public String ownership {set;get;}
    public PageReference create(){
        List<Account> a=[select id from Account where name=:accname and Phone=:phone];
        if(a.size()>0){
            Apexpages.Message msg=new Apexpages.Message(Apexpages.Severity.ERROR,'Duplicate record found');
            Apexpages.addMessage(msg);
            return null;
        }if(accname==''&&phone==''&&rating==''&&ownership==''){
            Apexpages.Message msg=new Apexpages.Message(Apexpages.Severity.ERROR,'Value Cannot be null');
            Apexpages.addMessage(msg);
            return null;
        }
        else{
            Account acc=new Account();
            acc.name=accname;
            acc.Phone=phone;
            acc.rating=rating;
            acc.Ownership=ownership;
            insert acc;
            pageReference p=new pageReference('/'+acc.Id);
            return p;
        }
    }
}