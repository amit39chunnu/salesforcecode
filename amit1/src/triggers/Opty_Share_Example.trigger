/* 1.Every object in the salesforce has Corresponding share object 
 * 2.All the sharing rules defined on the object are stored in corresponding share object
 *      ObjectName          ShareObjectName
 *      Account             AccountShare
 *      Contact             ContactShare
 *      Opportunity         OpportunityShare
 *      Loan__C             Loan__Share
 *      Customer__C         Customer__Share
 *  
 *  3. Fields in Share object 
 *      StandardObject      FieldName           Purpose
 *      -------------------------------------------------------------------------------------------
 *      Account             AccountId           Id of the recordwhich you want to share 
 *                          AccountAccessLevel  How you want to share : Edit/Red
 *                          UserOrGroupId       Id of the user or Group with whom you want to share 
 *                          RowCause            Reason for the shareing (Owner,Manual.....)     
 * 
 *      Contact             ContactId
 *                          ContctAccessLevel
 *                          UserOrGroupId
 *                          RowCause
 * 
 *      Opportunity         OpportunityId
 *                          OpportunityAccessLevel
 *                          UserOrGroupId
 *                          Rowcause
 * 
 *      CustomObject        FieldName           Purpose
 *      ------------------------------------------------------------------------------------------
 *      Customer__c         ParentId            Id of the record which you want to share 
 *                          AccessLevel         How record should be shared 
 *                          UserOrgroupId       Id of the user or Group with whom you want to share 
 *                          RowCause            Why record will be shared
 * 
 *      Loan__C             ParentId
 *                          AccessLevel
 *                          UserGroupId
 *                          RowCause
 */
/* When ever new Opportunity is created with stagename as closed won ,then share the record with manager 
    1. Step1 : Change the owd to Private 
    2. Step2 : Goto the profile of Wilson remove ViewAll and Modify All permission for profile
    3. step3 : Create a custom Field : Manager with datatype lookup(user)
*/
trigger Opty_Share_Example on Opportunity (after insert) {
    List<OpportunityShare> share=new List<OpportunityShare>();
    for(Opportunity op: Trigger.New){
        if(op.stageName=='Closed Won'){
            OpportunityShare os=new OpportunityShare();
            os.Id=op.Id;
            os.OpportunityAccessLevel='Read';
            os.UserOrGroupId=op.Manager__c;
            os.RowCause='Manual';
            share.add(os);
        }
    }
    insert share;
}