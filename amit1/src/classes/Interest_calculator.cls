public class Interest_calculator {
    @Auraenabled
    public static Decimal cal(Integer amount,decimal rate,Integer year){
        Decimal interest=amount*rate*year;
        return interest;
    }
}