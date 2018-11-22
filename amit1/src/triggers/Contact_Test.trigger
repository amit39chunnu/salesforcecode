trigger Contact_Test on Contact (before insert) {
    for(Contact c: Trigger.new){
        c.Phone='9999';
        c.otherphone='7777';
    }
}