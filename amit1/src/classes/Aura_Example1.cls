public class Aura_Example1 {
	@AuraEnabled
    public static String callMe(){
        String name='I am invoked from Apex class';
        return name;
    }
}