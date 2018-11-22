/* 
 * JSON:
-------
1. JSON is a pre-defined Apex class .
2. This class is defined under namespace System.
3. This class contains all the methods required to serialize the Apex object into JSON String.
4. This class Contains all the methods required to de-serialize the JSON String into Apex object.

Note : Serialize :Converting the Object into String format 

Note : De-Serialize: Converting String into native object format

Methods :
	a. serialize(objectToSerialize)
	b. serializePretty(objectToSerialize)
	c. serialize(objectToSerialize, suppressApexObjectNulls)
	d. serializePretty(objectToSerialize,SuppressApexObjectNulls)
	e. deserialize(jsonString,apexType)
	f. deserializeStrict(jsonString, apexType)
	g. deserializeUntyped(jsonString)
	h. createParser(jsonString)
	i. createGenerator(flag)

5. serialize(object) :
	a. This method will convert the given object into JSONString
	b. Syntax : 
		static String serialize(object)

	c. Example1
		Integer age=10;
		String str=JSON.serialize(age);

	d. Example :2
		
		Student s=new Student();
		s.Name='Satish';
		s.age=32;
		String str=JSON.serialize(s);
		O/p: {"Name":"Satish","age":32}

6. serializePretty(objectToSerialize):
	a. This method will convert the given object into Pretty print format of JSONString 
	b. Syntax : 
		static String serializePretty(objectToSerialize)

	    JSONString : {"Name":"Satish","age":32,"salary":10000}

	    PrettyPrint: { "Name":"Satish" , "age" : 32, "Salary" : 10000 } 
		

	c. Example :1
		Integer age=10;
		String str=JSON.serializePretty(age);

	d. Example :2
		
		Student s=new Student();
		s.Name='Satish';
		s.age=32;
		String str=JSON.serializePretty(s);
		O/p: { "Name" : "Satish", "age" :32 }


7.serialize(objectToSerialize,flag)	
	a. This method will convert the Apex object into JSONString 
	b. In case in of the element value is null ,they will not be displayed in the json
	c. When we keep flag as true ,it will not display null name/value pair in the JSON

	
8.serializePretty(objectToSerialize,flag)	
	a. This method will convert the Apex object into JSON pretty print format  
	b. In case in of the element value is null ,they will not be displayed in the json
	c. When we keep flag as true ,it will not display null name/value pair in the JSON

*/

public class JSON_Serialize_Example_1 {
    public String  integerResult 	{set;get;}
    public String  stringResult  	{Set;get;}
    public string  dateResult	    {set;get;}
    public String  blobResult		{set;get;}
    public String  accResult		{set;get;}
    public String  studResult		{set;get;}
     public String  integerResult1 	{set;get;}
    public String  stringResult1  	{Set;get;}
    public string  dateResult1	    {set;get;}
    public String  blobResult1		{set;get;}
    public String  accResult1		{set;get;}
    public String  studResult1		{set;get;}
    public String stdResult2		{set;get;}
    public String stdResult3		{set;get;}
    public JSON_Serialize_Example_1(){
        integerResult=JSON.serialize(1000);
        String name='Satish';
        stringResult=JSON.serialize(name);
        Date dob=System.today();
        dateResult=JSON.serialize(dob);
        Blob body=Blob.valueOf('This is test message');
        blobResult=JSON.serialize(body);
        Account acc=new Account();
        acc.Name='Wipro';
        acc.Phone='1111'; 
        accResult=JSON.serialize(acc);
        Student_Wrapper sw=new Student_Wrapper();
        sw.lastName='Myla';
        sw.firstName='Satish';
        sw.Phone='1111';
        studResult=JSON.serialize(sw);
        studResult1=JSON.serializePretty(sw); 
        dateResult1=JSON.serializePretty(dob);
        blobResult1=JSON.serializePretty(body);
        studResult1=JSON.serializePretty(sw);
        accResult1=JSON.serializePretty(acc);
        stringResult1=JSON.serializePretty(name);
        stdResult2=JSON.serialize(sw,true);
        stdResult3=JSON.serializePretty(sw,true);
        
    }
}