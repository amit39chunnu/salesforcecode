public class CustomLoginController{
    public String username{set;get;}
    public String password{set;get;}
    public pageReference doLogin(){
        return Site.login(username,password,'/CommunityWelcomePage');
    }
}