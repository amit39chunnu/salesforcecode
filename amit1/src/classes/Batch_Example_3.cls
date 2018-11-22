global class Batch_Example_3 implements Database.Batchable<sobject>,Database.Stateful {
	public Integer count=0;
    public static Integer size=0;
    global Database.QueryLocator start(Database.BatchableContext bc){
        String query='select name from Opportunity';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<Opportunity> scope){
        for(Opportunity a : scope){
            count=count+1;	 
            size=size+1;
        }
    }
    global void finish(Database.BatchableContext bc){
        Account acc=new Account();
        acc.Name='Count :'+count+ ': size: '+size;
        insert acc;
    }
        global void execute(SchedulableContext sc)
    {
        Batch_Example_3 bs =new Batch_Example_3();
        Id job=Database.executeBatch(bs);
    }
}