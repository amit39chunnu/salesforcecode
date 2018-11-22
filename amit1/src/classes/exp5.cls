global class exp5 implements Database.Batchable<Sobject> {
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('select ownership,rating from Account');
    }
    global void execute(Database.BatchableContext bc,List<Account> scope){
        for(Account a:scope){
            if(a.rating=='hot'){
            	a.ownership='Public';
            }
        }
        update scope;
    }
    global void finish(Database.BatchableContext bc){
        
    }
}