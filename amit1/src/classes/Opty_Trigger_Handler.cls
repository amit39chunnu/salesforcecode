/* When ever a new opportunity is created with Type as New Customer then Set Stagename as Propecting and 
  closeDate as 15 days from createdDate
 * When ever a new opportunity is created with Stagename as closed won then share the record with wilson
 * When ever existing opportunity stagename is modified to closed won then create Wilson as OpportunityTeamMember
 */
public class Opty_Trigger_Handler {
    public static void beforeInsert(List<Opportunity> optyList){
        for(Opportunity op:optyList){
            if(op.type=='New Customer'){
                op.stagename='Prospecting';
                op.closeDate=System.today()+15;
            }
        }
    }
    public static void afterInsert(List<Opportunity> optyList){
        User u =[select id from User where alias='wk'];
        List<OpportunityShare> share =new List<OpportunityShare>();
        for(Opportunity op:optyList){
            if(op.stagename=='Closed won'){
            	OpportunityShare os=new OpportunityShare();
            	os.OpportunityId=op.id;
                os.UserOrGroupId=u.id;
                os.OpportunityAccessLevel='Read';
                os.Rowcause='Manual';
                share.add(os);
            }
        }
        insert share;
    }
    public static void afterUpdate(Map<Id,Opportunity> oldMap, Map<Id,Opportunity> newMap){
    	Set<Id> keys =oldMap.keySet();
        User u =[select id from User where alias='wk'];
        List<OpportunityTeamMember> teams =new List<OpportunityTeamMember>();
        for(Id k:keys){
            Opportunity old=oldMap.get(k);
            Opportunity newOpt=newMap.get(k);
            if(old.stagename!='Closed Won' && newOpt.stagename=='Closed Won'){
                OpportunityTeamMember otm=new OpportunityTeamMember();
                otm.opportunityId=k;
                otm.userId=u.Id;
                otm.OpportunityAccessLevel='Read';
                otm.TeamMemberRole='Account Manager';
                teams.add(otm);
            }
        }
    }
}