public class Marksexample {
 	public Decimal entermarks {set;get;}
    public Decimal totalmarks {set;get;}
    public Decimal percent    {set;get;}
    public void add(){
        percent= 57233 /totalmarks; // It is all about the arthmetic calculation ..
        system.debug('percent' + percent);
    }
}