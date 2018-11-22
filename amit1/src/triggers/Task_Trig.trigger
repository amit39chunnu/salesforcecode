trigger Task_Trig on Task (before insert) {
    List<Task> tasks=Trigger.new;
    Task t=tasks[0];
    // WhatId : Id of the record on which we are creating a task
    Integer count =[select count() from Task where whatId=:t.whatId];
    if(count >=3){
        t.addError('More than Three tasks cannot be created');
    }
}