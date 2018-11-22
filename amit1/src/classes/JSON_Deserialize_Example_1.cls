/*
 */
public class JSON_Deserialize_Example_1 {
    public Integer age 					{set;get;}
    public Student_Wrapper sw 			{set;get;}
    public Account acc 		    		{set;get;}
    public Map<String,Object> resMap	{set;get;}
    public JSON_Deserialize_Example_1(){
        String ageVal='10';
        age=(Integer)JSON.deserialize(ageVal,Integer.class);
        String stdString='{"lastName":"Myla","firstName":"Satish","Phone":"1111","Mobile":"123"}';
        sw=(Student_Wrapper)JSON.deserialize(stdString,Student_Wrapper.class);
        String accString='{"Name":"Wipro","Phone":"123"}';
        acc=(Account)JSON.deserialize(accString,Account.class);
       /* Every element of JSONString should be a part of ApexType into which we are converting 
      	 	If any element jsonString not available in the ApexType it will throw error
        	sw=(Student_Wrapper)JSON.deserializeStrict(stdString,Student_Wrapper.class);
		*/
        String jsonString='{"Name":"Satish","Age":32,"Account":{"name":"wipro","Industry":"Banking"},"Salary":10000}';
        resMap=(Map<String,Object>)JSON.deserializeUntyped(jsonString);
    }
}