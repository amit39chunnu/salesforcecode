/************************************************************************************
 * Trigger Name:AccountTriggerForUpdateContacts
 * Purpose:performing different operations on account and realted contacts based on the scenario
 * Note:Please make sure you have custom field-Account_Number_1__c on your Contact Object 
 * *********************************************************************************/


trigger AccountTriggerForUpdateContacts on Account (after insert) {
    //Prepairing a list to insert contacts
    List<Contact> lstcontactToInsert=new List<Contact>();
    //Prepairing a list of contacts to update
    List<Contact> lstcontactToUpdate=new List<Contact>();
    for(Account objAccount:Trigger.new){
        //Scenario 1:If a new Account is created and the account number is not blank 
        //Create a contact with last name chaturvedi and contacts's
        //account number similar to account number
        if(Trigger.isinsert && (objAccount.AccountNumber!=NULL||objAccount.AccountNumber!='')){
            //Create a contact with accountnumber same as Account's accountnumber with lastname is kumar
            Contact objContact=new Contact();
            objContact.Lastname='Kumar';
            //objContact.AccountId=objAccount.Id;
            //Since lastname is required for contact so it need to put this down
            objContact.Account_Number_1__c=objAccount.Accountnumber;
            lstcontactToInsert.add(objContact);
        }
    }
    insert lstcontactToInsert;
}