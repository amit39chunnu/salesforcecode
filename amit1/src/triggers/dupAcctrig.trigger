trigger dupAcctrig on Account (before insert,before update) {
    for(Account a:Trigger.new){
        List<Account> acc=[Select id from Account where name=:a.Name];
        if(acc.size()>0){
            a.Name.addError('duplicate record found');
        }
    }

}