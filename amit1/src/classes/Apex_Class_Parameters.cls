public class Apex_Class_Parameters {
    public String name 		{set;get;}
    public String phone 	{set;get;}
    public Apex_Class_Parameters(){
        // from apex pags 
        // from the current page 
        // getparameters 
        // get given parameter
        name=Apexpages.currentpage().getparameters().get('name');
    }
}