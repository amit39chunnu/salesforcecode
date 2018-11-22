public class PBSectionItem_Example {
    public Integer aval	{set;get;}
    public Integer bval {set;get;}
    public Integer cval {set;get;}
    public void add(){
        if(aval == 0 ){
            Apexpages.Message msg=new Apexpages.Message(Apexpages.Severity.Error ,'AVal is not provided');
            Apexpages.addMessage(msg);
            
        }
        if(bval==0){
             Apexpages.Message msg=new Apexpages.Message(Apexpages.Severity.Error ,'BVal is not provided');
             Apexpages.addMessage(msg);
        } 
        cval=aval+bval;
    }
    public void mul(){
         if(aval == 0){
            Apexpages.Message msg=new Apexpages.Message(Apexpages.Severity.Error ,'AVal is not provided');
            Apexpages.addMessage(msg);
        }
        if(bval==0){
            Apexpages.Message msg=new Apexpages.Message(Apexpages.Severity.Error ,'BVal is not provided');
            Apexpages.addMessage(msg);
        }
        cval=aval*bval;
    }
        public void reset(){
        aval=null;
        bval=null;
       }
}