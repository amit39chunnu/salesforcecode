/* SelectOption(itemValue,itemLabel)
 */
public class PickList_Example_2 {
    public List<SelectOption> options {set;get;}
    public String selected			  {set;get;}
    public PickList_Example_2(){
        List<String> cities =new List<String>{'Hyd','Ban','Che','Pune'};
        options =new List<SelectOption>();
        for(String s: cities){
            SelectOption op=new SelectOption(s,s); // s is hyd so itemValue=S  itemLabel=s
            options.add(op);
        }
    }
}