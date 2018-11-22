public class Input_Example_2 {
    public Integer aval		{set;get;}
    public Integer bval		{Set;get;}
    public Integer result 	{set;get;}
    public void add(){
        result=aval+bval;
    }
    public void mul(){
        result=aval*bval;
    }
    public void reset(){
        aval=null;
        bval=null;
        result=null;
    }
}