public class Inbound_Example_1 implements Messaging.InboundEmailHandler{
    public Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email,Messaging.InboundEnvelope env)
    {	
       Messaging.InboundEmailResult result =new Messaging.InboundEmailResult();
        try{
          	/* Find out the contact who has sent this email  */
            Contact con=[select id from Contact where email=:email.fromAddress];
            Case c=new Case();
            c.subject=email.subject; // Subject of the email is the subject of the case 
            c.origin='Email';
            c.Priority='Normal';
            c.Status='New';
            c.Description=email.plainTextBody;
            c.contactId=con.Id;
            insert c;
            result.success=true;
        }catch(Exception e){
            result.success=false;
        }
        return result;
    }

}