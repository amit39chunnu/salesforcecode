public class Education_detail {
	@AuraEnabled
    public static void saveStudent(Education_detail__c student){
        INSERT student;
    } 
}