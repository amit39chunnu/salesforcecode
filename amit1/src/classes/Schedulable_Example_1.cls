/* Any job which is scheduled will be registred with CronTrigger object. 
 * We can write a soql query on CronTrigger to fetch the status of the scheduled jobs 
 */
public class Schedulable_Example_1 implements Schedulable {
    public void execute(SchedulableContext sc){
        List<Account> accounts =[select id,name from Account where CreatedDate=THIS_WEEK];
        delete accounts;
        Batch_Example_3 be =new Batch_Example_3();
        Id job=Database.executeBatch(be);
       // System.scheduleBatch(pram1, param2,param3,param4)
       /* Param1 : object of the apex class which implemented Database.Batchable
        * Param2 : Name of the job 
        * Param3 : After how many minutes you want the job to run 
        * Param4 : Scope :Size of the batch
        * System.scheduleBatch(be,'TEsting',10,2000); // Run after 10 minutes with batch size 2000
        */
    }
}
/* 
 * schedule apex : 
 * 				Batch apex : yes 
 * 				future     : Yes 
 */