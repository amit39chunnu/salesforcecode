public class Button_URL_Data {
    public String name  {set;get;}
    public String phone {set;get;}
    public void callMe(){
        name=Apexpages.currentPage().getParameters().get('name');
        phone=Apexpages.currentPage().getParameters().get('phone');
    }
}