public class Future_Example {
    @future
    public static void callMe(){
        System.debug('CallMe One');
        System.debug('CallMe Two');
        System.debug('CallMe Three');
    }
   @future
    public static void show(){
         System.debug('Show One');
         System.debug('Show Two');
         System.debug('Show Three');
    }
    public void invoke(){
         System.debug('Invoke One');
         System.debug('Invoke Two');
         callMe();
         System.debug('Invoke Three');
         System.debug('Invoke Four');
         show();
         System.debug('Invoke Five');
         System.debug('Invoke Six');
    }
}