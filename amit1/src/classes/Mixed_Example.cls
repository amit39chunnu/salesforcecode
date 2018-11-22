public class Mixed_Example {
    public void create(){
        Profile p = [SELECT Id FROM Profile WHERE Name='System Administrator'];
        UserRole r = [SELECT Id FROM UserRole WHERE Name='CEO'];
        // Create new user with a non-null user role ID 
        User u = new User(alias ='pm', email='salesforcebatch300@gmail.com', 
            emailencodingkey='UTF-8', lastname='pramod', 
            languagelocalekey='en_US', 
            localesidkey='en_US', profileid = p.Id, userroleid = r.Id,
            timezonesidkey='America/Los_Angeles', 
            username='pradmod@308.com');
        insert u;
        call();
    }
    @future
    public static void call(){
        Account acc=new Account();
        acc.Name='Testing';
        acc.Phone='1234';
        insert acc;
    }
}