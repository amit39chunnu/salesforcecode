trigger update_acc on Account (before insert) {
    User u = [select id from User where alias='kchun'];
    for(Account a:Trigger.New){
        if(a.Industry=='Banking'){
            a.OwnerId=u.id;
            a.Type='Prospect';
            a.Phone='123456789';
            a.Rating='hot';
        }       
    }
}