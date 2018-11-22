public class SOSL_Example {
    public List<Account> accounts {set;get;}
    public List<Contact> contacts {set;get;}
    public SOSL_Example(){
        List<List<Sobject>> result=[ FIND 'united' IN ALL FIELDS Returning Account(Name,Phone,Industry where industry='Energy'),Contact(LastName,FirstName,Phone limit 1)];
        accounts =(List<Account>)result[0];
        contacts=(List<Contact>)result.get(1);
    }
}