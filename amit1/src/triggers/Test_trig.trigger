trigger Test_trig on Lead (before insert) {
    for(Lead l:Trigger.New){
        if(l.leadSource=='web'){
            l.rating='Hot';
        }
    }

}