public class PBSectionItem_Example_2 {
	
    public Integer aval		{set;get;}
    public Integer bval 	{set;get;}
    public Integer cval 	{set;get;}
    public String  aerror 	{set;get;}
    public String  berror	{Set;get;}
    public void add(){
        if(aval==0){
            aerror='A Value is required';
        }
        if(bval==0){
            berror='BValue is required';
        }
        cval=aval+bval;
    }
    public void mul(){
        if(aval==0){
            aerror='A Value is required';
        }
        if(bval==0){
            berror='BValue is required';
        }
        cval=aval*bval;
    }
    public void reset(){
        aval=null;
        bval=null;
        cval=null;
    }
    
}