/*
 * Order By <FieldName>[ASC/DESC]
	Order by Name  ASC
	Order By CreatedDate DESC
	Order By CloseDate ASC
	Order By <FieldName1> [ASC/DESC] , <FieldName> [ASC/DESC]
	Order By Name ASC  CloseDate DESC
	Order By LastName ASC FirstName DESC 
*/
public class SOQL_Example_2 {
    public List<Account> accounts {set;get;}
    public SOQL_Example_2(){
        accounts =[select Name,Industry,Rating,Ownership,Phone from Account];
    }
    public void nameDesc(){
        accounts =[select Name,Industry,Rating,Ownership,Phone from Account order by Name Desc];
    }
    public void nameAscPhoneDesc(){
        accounts =[select Name,Industry,Rating,Ownership,Phone from Account order by Name ASC ,Phone DESC];
    }
    /* Fetch last five accounts created */
    public void lastFive(){
        accounts =[select Name,Industry,Rating,Ownership,Phone from Account order by CreatedDate limit 5];
    }
}