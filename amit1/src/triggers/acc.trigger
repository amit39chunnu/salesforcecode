trigger acc on Account (before insert) {
    for(Account a:Trigger.New){
        a.Rating='Hot';
        a.Ownership='private';
    }

}