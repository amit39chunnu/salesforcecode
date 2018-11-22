public class json_example {
    public Integer aval{set;get;}
    public String accresult{set;get;}
    public Account acc{set;get;}
    public json_example(){
        aval=10;
        acc=new Account();
        acc.name='Amit';
        acc.phone='2334';
        acc.rating='hot';
        accresult=JSON.serialize(acc);
    }
   

}