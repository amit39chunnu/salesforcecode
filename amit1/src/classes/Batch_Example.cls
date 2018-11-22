global class Batch_Example implements Database.Batchable<sobject>{
    global Database.QueryLocator start(Database.BatchableContext bc){
         String query='select ownership,rating from Account';
         return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<Account> scope){
        for(Account a:scope){
            a.ownership='Public';
            a.rating='Hot';
        }
    }
    global void finish(Database.BatchableContext bc){
        
    }
}