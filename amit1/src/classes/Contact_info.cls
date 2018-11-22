public class Contact_info {
	 @AuraEnabled
    public static void saveStudent(Contact__c student){
        INSERT student;
    }
}