public class Input_Example_3 {
    public Decimal amount {Set;get;}
    public Decimal years  {Set;get;}
    public Decimal rate	  {Set;get;}
    public Decimal intrest{set;get;}
    public void calculate(){
        intrest=(amount*years*rate)/100;
    }
    public void reset(){
        amount=null;
        years =null;
        rate=null;
        intrest=null;
    }
}