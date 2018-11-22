global class Batch_Schedule implements Schedulable,Database.Batchable<sobject>{
    global Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'select id,name from Account';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<Account> scope){
        
    }
    global void finish(Database.BatchableContext bc){
        
    }
    global void execute(SchedulableContext sc)
    {
        Batch_Schedule bs =new Batch_Schedule();
        Id job=Database.executeBatch(bs);
    }
    //system.abortJob(jobId)
}