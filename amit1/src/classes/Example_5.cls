public class Example_5 {
	public String lastName;
    public String firstName;
    public String phone;
    public void create(){
        Contact c=new Contact();
        c.LastName=lastName;
        c.FirstName=firstName;
        insert c;
    }
    public void deleteAcc(){
        List<Contact> contacts =[select id from Contact where createdDate=TODAY];
        delete contacts;
    }
}