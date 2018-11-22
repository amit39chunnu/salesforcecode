public class Message_Example {
    public String name  {set;get;}
    public void login(){
        if(name==''){
            Apexpages.Message msg=new Apexpages.Message(Apexpages.Severity.Error,'Name is a required field');
            Apexpages.addMessage(msg);
        }else{
             Apexpages.Message msg=new Apexpages.Message(Apexpages.Severity.CONFIRM,'Operation Success');
            Apexpages.addMessage(msg);
        }
    }
}