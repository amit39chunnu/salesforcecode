public class community_user_class {
    public List<User> users{set;get;}
    public community_user_class(){
        users=[Select id,name from User where Profile.UserLicense.Name='Customer Community'];
    }
    public PageReference login(){
        PageReference p=new PageReference('/sfsites/picasso/core/config/commeditor.jsp?exitURL=https%3A%2F%2Flightning-amit439-dev-ed.my.salesforce.com%2Fservlet%2Fnetworks%2Fswitch%3FnetworkId%3D0DB7F000000L2dv%26startURL%3D%252FcommunitySetup%252FcwApp.app%2523%252Fc%252Fhome');
        return p;
    }
}