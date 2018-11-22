public class ContactList {
    public List<ContactData> contacts{set;get;}
    public Contact newCon{set;get;}
    public ContactList(){
        contacts=new List<ContactData>();
        newCon=new Contact();
    }
    public void add(){
        ContactData cd=new ContactData();
        cd.con=newCon;
        Contacts.add(cd);
        newCon=new Contact();
        
    }

}