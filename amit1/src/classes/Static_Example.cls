public class Static_Example {
	public Static Integer aval =0;
    public Integer bval=0;
    public void add(){
        aval=aval+10;
        bval=bval+10;
    }
    public static void call(){
        aval=aval+10;
        Integer bval=0;
    }
}