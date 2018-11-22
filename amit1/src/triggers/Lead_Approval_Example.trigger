/*  Approval.ProcessRequest : 
 *  1. Process Request is a predefined apex class .
 *  2. It is defined under the namespace of Approval.
 *  3. The ProcessRequest class is the parent class for the ProcessSubmitRequest and ProcessWorkitemRequest classes.
 *  4. This class contains few methods 
 *          a. setComments()
 *          b. getComments()
 *          c. setNextApproverIds()
 *          d. getNextApproverIds();
 * 
 * Approval.ProcessSubmitRequest  :
 *  1. it is a predefined apex class 
 *  2. It is defined under than namespace of Approval
 *  3. It is a child class of ProcessRequest.
 *  4. Methods : 
 *          a. setObjectId()
 *          b. getObjectId()
 *          c. setSubmitterId()
 *          d. getSubmitterId()
 *          e. setProcessDefinitionNameorId()
 *          f. getProcessDefinitionNameorId()
 *          g. setskipEntryCriteria()
 *          h. getskipEntryCriteria()
 * 
 *  Approval.ProcessResult: 
 *  1. It is a predefined apex 
 *  2. Defined under name space of Approval
 *  3. This class will contain the status of the Approval Process 
 *  4. Methods :    
 *          a. isSuccess()
 *          b.getEntityId(): Id of the record which is being processed.
 *          c.getErrors()
 *          d.getInstanceId() : id of the approval process to which record is submitted
 *          e.getInstanceStatus() : Status of the approval process
*/
trigger Lead_Approval_Example on Lead (after insert) {
    
    for(Lead l:Trigger.new){
        
        Approval.ProcessSubmitRequest req1 = new Approval.ProcessSubmitRequest();
        
        // Id of the record which you want to submit
        req1.setObjectId(l.Id); 
        
        // Id of the user who is submitting the record
        req1.setSubmitterId(UserInfo.getUserId()); 
        
        // Name of the Approval Process or Id of the Approval Process
        req1.setProcessDefinitionNameOrId('LeadApproval');
        
        // If you have any entry conditions do you want to skip
        req1.setSkipEntryCriteria(true); 
        
        // Id of the next approver
        List<Id> app=new List<Id>{l.Manager__c};
        req1.setNextApproverIds(app); 
        Approval.ProcessResult result = Approval.process(req1); // Submit the record for approval
        System.debug('Status:'+result.isSuccess());
    }
}