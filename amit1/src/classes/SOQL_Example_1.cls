public class SOQL_Example_1 {
    public List<Account> accounts {set;get;}
    public SOQL_Example_1(){
        accounts =[select Name,Industry,Phone,Rating from Account];
    }
    /* Limit : 
     * 1. Limit is the keyword which is used to specify how many records should be returned from the queryResult
     * Example : 
     * Limit 5 
     * Limit 10 
     * Limit 200
     * 2. In case if you want to use variable in the soql query we need specify ':' before variable 
     * Limit : variable
     * Limit : number 
     * Limit : count
     */
    public void limitFive(){
        accounts =[select Name,Industry,Phone,Rating from Account limit 5];
    }
    public void limitSize(){
        Integer size=3;
        accounts =[select Name,Industry,Phone,Rating from Account limit : size];
    }
    /* OFFSET : 
     * 1. This will specify from which position data should be returned from the queryResult 
     * 2. Maximum value of offset is 2000
     * Example :
     * 	OFFSET 20
     *  OFFSET 50
     *  OFFSET 100
     * 3.If you want to use variable then 
     * 	  OFFSET : variablename
     */
    public void offsetTen(){
        accounts =[select Name,Industry,Phone,Rating from Account OFFSET 10];
    }
    public void offsetSize(){
        Integer size=15;
       accounts =[select Name,Industry,Phone,Rating from Account offset :size];
    }
    /* Limit always followed by Offset */
    public void limit5Offset5(){
        accounts =[select Name,Industry,Phone,Rating from Account  limit 10 offset 5];
    }
    public void limitOffsetSize(){
        Integer size=5;
        accounts =[select Name,Industry,Phone,Rating from Account  limit:size offset:size];
    }
}