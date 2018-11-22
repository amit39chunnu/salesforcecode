public class Example_4 {
	public String leadSource;
    public String rating;
    public Decimal amount;
    public void call(){
        if(leadSource=='Web'){
            rating='Hot';
            amount=10000;
        }else{
            rating='Warm';
            amount=20000;
        }
    }
}