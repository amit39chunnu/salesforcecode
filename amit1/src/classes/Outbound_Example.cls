public class Outbound_Example {
    public void call(){
        Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
        String[] toadd=new String[]{'salesbatch30@gmail.com'};
        String[] ccAdd=new String[]{'abc@xyz.com'};
        string[] bccAdd=new String[]{'abc@xyz.com'};
        msg.setToAddresses(toadd);
        //msg.setBccAddresses(bccAdd);
        //msg.setCcAddresses(ccAdd);
        msg.setSubject('Test Email');
        msg.setPlainTextBody('This is a test email');
        Messaging.Email[] emails =new Messaging.Email[]{msg};
        Messaging.sendEmail(emails);
    }
    public void htmlCall(){
        Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
        String[] toadd=new String[]{'salesfch300@gmail.com'};
        msg.setToAddresses(toadd);
        String body='<h2> Hai Kiran<br/><br/><font style="color:red">This is  a test color <br/><br/>Thanks<br/>Sales Team</h2>';
        msg.setHtmlBody(body);
        msg.setSubject('This is test Mail');
        msg.setSenderDisplayName('Satish Myla');
        Messaging.Email[] emails =new Messaging.Email[]{msg};
        Messaging.sendEmail(emails);
    }
    public void sendTemp(){
        /* Fetch the template : EmailTemplate : It is a predefined  Sobject,where all the emailTemplates are stored. */
        EmailTemplate et =[select id from EmailTemplate where name='Test'];
        /* We can send email template to only contact ,lead ,user  
         * Lead/Contact/User to whom you want to send email template ,that id should be defined as targetObjectId() */
         Contact c=[select id ,accountid from Contact where phone='9854'];
         Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
        /* Set the Id of the emailTemplate ,which you want to send */
         msg.setTemplateId(et.Id);
        /* Set TargetObjectId */
        msg.setTargetObjectId(c.id);
        /* Set whatId() : Id of the record whose data is used in the emailTemplate */
        msg.setWhatId(c.accountId);
        Messaging.Email[] emails=new Messaging.Email[]{msg};
        Messaging.sendEmail(emails);
    }
    public void sendAt(){
        Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
        String[] toadd=new String[]{'salesforcebatch300@gmail.com'};
        msg.setToAddresses(toadd);
        msg.setSubject('Test Email');
        msg.setPlainTextBody('This is a test email');
        /* Write a query to fetch documents from Document object */
        Document d=[select name,body from Document where name='Test'];
        /* Conver the document as EmailFileAttachment */
        Messaging.EmailFileAttachment eft1=new Messaging.EmailFileAttachment();
        eft1.setFileName(d.name+'.doc');
        eft1.setBody(d.body);
        /* Convert the VF page in the form of EmailAttachment */
        PageReference p=Page.InvoicePage;
        // getContentAsPdf(): This will convert the VF page body as Blob 
        Blob body=p.getContentAsPDF();
        /* Convert the VFpage as EmailFileAttachment */
        Messaging.EmailFileAttachment eft2=new Messaging.EmailFileAttachment();
        eft2.setFileName('Invoicepage.pdf');
        eft2.setBody(body);
        Messaging.EmailFileAttachment[] files =new Messaging.EmailFileAttachment[]{eft1,eft2};
        msg.setFileAttachments(files);
        Messaging.Email[] emails =new Messaging.Email[]{msg};
        Messaging.sendEmail(emails);
        
    }
}