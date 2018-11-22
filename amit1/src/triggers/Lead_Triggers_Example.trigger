trigger Lead_Triggers_Example on Lead (before insert,after insert) {
    if(Trigger.isBefore && Trigger.isInsert){
        Lead_Handler.beforeInsert(Trigger.new);
    }
    if(Trigger.isAfter && Trigger.isInsert){
        Lead_Handler.afterInsert(Trigger.new);
    }
}