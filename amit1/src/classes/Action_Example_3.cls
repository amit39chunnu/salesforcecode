public class Action_Example_3 {
    public String result {set;get;}
    public Integer count {Set;get;}
    public Action_Example_3(){
       
        count=0;
         result='Time :'+system.now()+ ':count:'+count;
    }
    public void call(){
         count=count+1;
        result='Time :'+system.now()+' :Count:'+count;
       
    }
}