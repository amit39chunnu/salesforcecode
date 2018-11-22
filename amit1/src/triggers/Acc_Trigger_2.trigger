/*when ever a new Account is created with Industry as Banking then 
 * make wilson as owner of the record and set ownership as Public
 */
trigger Acc_Trigger_2 on Account (before insert) {
    User u=[select id from User where alias='Wk'];
    for(Account a : Trigger.new){
        if(a.industry=='Banking'){
            a.ownerId=u.Id;
            a.ownership='Public';
        }
    }
}