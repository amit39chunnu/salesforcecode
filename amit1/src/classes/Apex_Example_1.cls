public class Apex_Example_1 {
    /* set  : take the data from the VF page and save it to variable in the apex class 
     * get  : take the data from the apex class and display in the VF Page 
     */ 
    public String name {set;get;}
    public Integer age {set;get;}
    public String getBranch(){
        return 'SRNagar';
    }
    public Apex_Example_1(){
        name='Satish Myla';
        age=33;
    }
}