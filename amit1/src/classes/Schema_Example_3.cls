public class Schema_Example_3 {
    public List<SelectOption> options {set;get;}
    public List<String> choices 	  {set;get;}
    public Schema_Example_3(){
        Options =new List<SelectOption>();
        // Fetch the properties of the given field
        Schema.DescribeFieldResult result =Account.Industry.getDescribe();
        // In the field we have picklist options, where every option is one picklistEntry 
        // it will have label and value
        choices =new List<String>();
        List<Schema.PicklistEntry> picklist=result.getPicklistValues();
        for(Schema.PickListEntry p:picklist){
            SelectOption op=new SelectOption(p.getValue(),p.getLabel());
            options.add(op);
            choices.add(p.getLabel());
        }
    }
}