trigger Acc_Triggers_Example on Account (before insert) {
    Recursive_Trigger_Example.beforeInsert();
}