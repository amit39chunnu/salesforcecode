public class Account_Delete {
    public Account acc {set;get;}
    public List<Contact> contacts {set;get;}
    public Account_Delete(Apexpages.StandardController controller){
        // When we say controller.getRecord() only id of the record will come .
        // If you want to get any other fields we need to add them to the controller.
        String[] fields =new String[]{'name','industry','Phone','rating'};
        controller.addFields(fields);
        acc=(Account)controller.getRecord();
        contacts=[select id ,lastname,firstname from Contact where accountId=:acc.Id];
    }
    public PageReference show(){
        delete contacts;
        PageReference p=new PageReference('/001/o');
        return p;
    }
}