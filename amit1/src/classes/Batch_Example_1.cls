/* Database.Batchable : 
 * a. It is a gloabal interface.
 * b. Any class which is implementing this interface should be global.
 */
global class Batch_Example_1 implements Database.Batchable<Sobject> {
    global Database.QueryLocator start(Database.BatchableContext bc){
        String query='select id,name,ownership from Account';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<Account> scope){
        for(Account a : scope){
           a.ownership='Public'; 
        }
        update scope;
    }
    global void finish(Database.BatchableContext bc){
        
    }
}