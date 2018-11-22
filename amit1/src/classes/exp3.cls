public class exp3 {
    public Account acc{set;get;}
    public String name{set;get;}
    public String industry{set;get;}
    public exp3(){
        acc=new Account();
    }
    public void show(){
        acc.Name=name;
        acc.Industry=industry;
        if(industry=='banking'){
            acc.Phone='1234';
            acc.Ownership='Public';
        }else{
            acc.Phone='1111';
            acc.Ownership='private';
        }
        insert acc;
    }
    

}