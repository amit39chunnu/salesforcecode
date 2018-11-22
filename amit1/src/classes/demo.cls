public class demo {
    public Integer sum;
    public void call(Integer a,Integer b,Integer c){
        sum=a+b+c;
        if(a==13){
            system.debug('0');
        }
        if(b==13){
            system.debug('sum='+a);
        }
        if(c==13){
            system.debug('sum='+a+b);
        }else{
            system.debug('sum='+sum);
        }
    }
}