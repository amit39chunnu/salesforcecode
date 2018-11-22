trigger Acc_Trigger_1 on Account (before insert) {
    /* Trigger.New : 
         1. Trigger is a predefined Apex class 
         2. new is a static Variable in the Trigger class 
            static List<Sobject> new;
         3. Trigger.New will store list of new recods which we are trying to insert 
         4. On Trigger.new we can perform Read/Write operation 
    */
    List<Account> accounts =Trigger.new;
    for(Account a: accounts){
       a.rating='Hot';
       a.ownership='Private';
    }
}