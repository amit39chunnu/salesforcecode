public class Action_Example_4 {
    public String name 			{set;get;}
    public String branch 		{set;get;}
    public String result		{set;get;}
    public void call(){
        result='Name :'+name+' :Branch:'+branch;
    }
}