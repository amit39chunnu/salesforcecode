/* When ever a new Lead is created with LeadSource as Web and rating as Hot assing wilson as owner of the 
 * record 
 * Once record is Created ,send email Notification to the owner of the lead
 */
public class Lead_Handler {
    public static void beforeInsert(List<Lead> leads){
        /* Fetch the Id of the user wilson */
        User u=[select id from User where alias='wk'];
        /* Check weather leadSource is web and rating is Hot */
        for(Lead l:leads){
            if(l.leadSource=='Web' && l.rating=='Hot'){
                l.ownerId=u.id;
            }
        }
    }
    public static void afterInsert(List<Lead> leads){
        Map<Id,String> userMap=new Map<Id,String>();
        List<Id> owners=new List<Id>();
        /* Take one by one lead from  the list of leads and put owners of the leads in separate list.*/
        for(Lead l:leads){
            owners.add(l.ownerId);
        }
        /* Write query to fetch all the email address of the users who are owners of new leads */
        List<User> users =[select id,email from User where id in:owners];
        for(User u: users){
            userMap.put(u.id,u.email);
        }
        List< Messaging.Email> emails =new List<Messaging.Email>();
        for(Lead my:leads){
            Messaging.SingleEmailMessage msg =new Messaging.SingleEmailMessage();
            String em=userMap.get(my.ownerId);
            String[] toadd=new String[]{em};
            msg.setToAddresses(toadd);
            msg.setSubject('New Lead Assigned');
            String body='Dear Executive, <br/> New Lead is assigned to you with the following details';
            body=body+'<br/> Name :'+my.lastname+'.'+my.firstName;
            body=body+'<br/> Phone :'+my.phone;
            body=body+'<br/>Lead Source:'+my.leadSource+'<br/>Thanks<br/>Sales Team';
            msg.setHtmlBody(body);
            emails.add(msg);
        }
        Messaging.sendEmail(emails);
    }
}