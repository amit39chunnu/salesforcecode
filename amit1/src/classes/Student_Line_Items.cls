/*Create instance of student data
  Assign the value
  Excute the program using debug
*/
public class Student_Line_Items {
    /*student: it is a reference variable with datatype: Student_Data
     * Default value of studenr is null
     *  Datatype variableName
     */
    public Student_Data student;
    /* Constructor will have same name as class name
     * Constructor is used to initialize the datamembers of the class
    */
    public Student_Line_Items(){
        /*initialize the student*/
        student=new Student_Data();
        /* System.debug(); this will print the message on log file*/
        System.debug('Name:'+student.name);
        System.debug('Phone:'+student.phone);
        System.debug('DOB:'+student.dob);
    }
    public void call(){
        student.name='Amit';
        student.phone='2111';
        student.dob=Date.newInstance(2018,5,31);
        System.debug('Name :'+student.name);
        System.debug('Phone:'+student.phone);
        System.debug('Dob :'+student.dob);
        
    }

}