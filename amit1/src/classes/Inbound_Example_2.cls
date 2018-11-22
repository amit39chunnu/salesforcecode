public class Inbound_Example_2 implements Messaging.InboundEmailHandler{
    public Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email,Messaging.InboundEnvelope env){
        Messaging.InboundEmailResult result =new Messaging.InboundEmailResult();
        try{
            /* Find the contact who has sent the email */
            Contact con=[select id from Contact where email=:email.fromAddress];
            
            // All the files which are attached to the email are fetched 
            Messaging.InboundEmail.binaryAttachment[] files =email.binaryAttachments;
            
            // Based on the data in the email create a case 
            Case c=new Case();
            c.contactId=con.Id;
            c.subject=email.subject;
            c.priority='Normal';
            c.status='New';
            c.origin='Email';
            c.Description=email.plainTextBody;
            insert c;
            // Fetch all the binary attachments recevied in the email 
            List<Attachment> attachments =new List<Attachment>();
            
            // Take one by one BinaryAttachment and  create  a attachment for a case 
            for(Messaging.InboundEmail.BinaryAttachment b: files){
                Attachment a=new Attachment();
                a.parentId=c.id; // Id of the case for which this attachment should be created 
                a.body=b.body;   // body of the attachment 
                a.Name=b.fileName; // name of the attachment 
                attachments.add(a);
            }
            insert attachments;
            result.success=true;
            
        }catch(Exception e){
            result.success=false;
        }
        return result;
    }
}