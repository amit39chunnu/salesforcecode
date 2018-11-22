trigger salarytrigoncon on Contact (after insert,after update) {
    if(Trigger.isafter && Trigger.isinsert ){
        salary.afterinsert(Trigger.new);
    }
    if(Trigger.isafter && Trigger.isupdate){
        salary.afterupdate(Trigger.oldmap,trigger.newmap);
    }
}