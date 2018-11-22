public class demo8 {
    @AuraEnabled
    public static String call(){
        String name='This is test lightning';
        return name;
    }

}