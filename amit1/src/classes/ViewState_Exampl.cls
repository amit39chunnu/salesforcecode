public class ViewState_Exampl {
    public static String name 			{set;get;}
    public Integer age 			{set;get;}
    public List<Account> accs 	{set;get;}
    public ViewState_Exampl(){
        accs=[select name,phone from Account];
    }
    public void call(){
        name='Satish Myla';
        age=40;

    }
}