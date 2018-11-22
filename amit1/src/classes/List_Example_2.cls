/* 1. Create a student wrapper class with LastName,FirstName,Phone,city as datamembers 
 * 2. Create a List of Student 
 * 3. Read the data from the VF page (LastName,FirstName,Phone,Email)
 * 4. When we click on add new Student wrapper is created and added to list
 */
public class List_Example_2 {
    public List<Student> students{set;get;}
    public String lastName 	{set;get;}
    public String firstName {set;get;}
    public String phone     {set;get;}
    public String city		{set;get;}
    public List_Example_2(){
        // students is a null so assign the memory
        students=new List<Student>();
    }
    public void add(){
        // Create a instance of student and add them students list
        Student s=new Student();
        s.lastName=lastName;
        s.firstName=firstName;
        s.phone=phone;
        s.city=city;
        students.add(s);
        lastName=null;
        firstName=null;
        phone=null;
        city=null;
    }

}