/* SelectOption : 
 * It is a predefined apex class .
 * This class is used to create picklist option using apex
 * Syntax : SelectOption(itemValue,itemLabel)
 */
public class PickList_Example {
    public List<SelectOption> options {set;get;}
    public String selected 			  {set;get;}
    public PickList_Example(){
        options=new List<SelectOption>();
        SelectOption op1=new SelectOption('none','-None-');
        SelectOption op2=new SelectOption('Hyd','TG');
        SelectOption op3=new SelectOption('Ban','KA');
        options.add(op1);
        options.add(op2);
        options.add(op3);
    }
}