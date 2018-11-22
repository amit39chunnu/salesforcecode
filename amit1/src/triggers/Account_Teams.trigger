/* 
 * When ever a new Account is Created with Rating hot then create wilson as AccountTeamMember
 * AccounTeamMember : 
 * Setup
 * |---> Build
 *       |---> Customize
 *             |---> Account 
 *                   |--->AccountTeam
 *                        |---> Enable Teams
 * 
 * AccountId        : Id of the account one which you want to create accountteam
 * UserId           : Id of the user whom want to create a Teammember 
 * TeammemberRole   : Role of the TeamMember 
 * AccountAccessLevel : Type of Access You want to give on account 
 * Opportunity AccessLevel: Type of access you want to given on opportunity
 *
 */
trigger Account_Teams on Account (after insert) {
    User u=[select id from User where alias='wk'];
    List<AccountTeamMember> teams=new List<AccountTeamMember>();
    for(Account a: Trigger.new){
        if(a.rating=='Hot'){
            AccountTeamMember atm=new AccountTeamMember();
            atm.AccountId=a.Id;
            atm.UserId=u.Id;
            atm.TeamMemberRole='Account Manager';
            atm.AccountAccessLevel='Read';
            atm.OpportunityAccessLevel='Read';
            atm.CaseAccessLevel='Read';
            teams.add(atm);
        }
    }
    insert teams;
}