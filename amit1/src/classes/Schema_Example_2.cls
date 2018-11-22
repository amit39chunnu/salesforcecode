public class Schema_Example_2 {
    public List<String> fields {set;get;}
    public Schema_Example_2(){
        // Fetch the description about the given sobject
        Schema.DescribeSobjectResult result =Account.SobjectType.getDescribe();
        // From the given sobject Result fetch the fields 
        Map<String,Schema.SobjectField> flds =result.fields.getMap();
        // where string : name of the field\
        // Schema.SobjectField : Properties of the given field
        Set<String> keys =flds.keySet();
        fields =new List<String>();
        fields.addAll(keys);
    }
}