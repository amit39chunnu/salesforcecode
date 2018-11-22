global class Batch_Example_2 implements Database.Batchable<sobject>{
    global Database.QueryLocator start(Database.BatchableContext bc){
        String query='select name,stagename,closeDate from Opportunity';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<Opportunity> scope){
        for(Opportunity op:scope){
            if(op.stagename=='Prospect'){
           		op.stagename='Closed won';
           		op.closeDate=System.today();
            }
        }
        update scope;
    }
    global void finish(Database.BatchableContext bc){
        // Email status
        
    }
}