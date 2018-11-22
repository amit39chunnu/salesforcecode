public class Mass_Delete {
    public List<Account> accounts {set;get;}
    public Mass_Delete(Apexpages.StandardSetController controller){
        // When we use getSelected() ,we only get Id of the records
        // If you want to fetch any other data from the record then we use controller.addFields()
        List<String> fields =new List<String>{'Name','Phone','Industry','Rating'};
        controller.addFields(fields);
        accounts =(List<Account>)controller.getSelected();
    }
    public PageReference deleteData(){
         delete accounts;
         PageReference p=new PageReference('/001?fcf=00B7F000008afvf');
         return p;
    }
}