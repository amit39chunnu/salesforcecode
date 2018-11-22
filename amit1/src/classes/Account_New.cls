public class Account_New {
    public Account acc {set;get;}
    public Account_New(Apexpages.StandardController controller){
        // Get the record which was reffered by controller
        acc=(Account)controller.getRecord();
    }
    public PageReference create(){
        // Write a soql query and find are they any duplicate records with same account name.
        Integer count=[select count() from Account where name=:acc.Name];
        if(count> 0){
            // if there are any duplicate records then throw error messages
            Apexpages.Message msg=new Apexpages.Message(Apexpages.Severity.Error,'Duplicate Record Exists');
            Apexpages.addMessage(msg);
            return null;
        }else{
            insert acc;
            PageReference p=new PageReference(''+acc.Id);
            return p;
        }
    }
}