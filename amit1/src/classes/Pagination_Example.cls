public class Pagination_Example {
    public Apexpages.StandardSetController controller {set;get;}
    public Integer size 							  {Set;get;}
    public string getName(){
        return 'Satish';
    }
    public List<Opportunity> getOpty(){
        List<Opportunity> optyList=(List<Opportunity>)controller.getRecords();
        return optyList;
    }
    public Pagination_Example(){
        List<Opportunity> optyList =[select id,name,stagename,closeDate,amount from Opportunity];
        // StandardSetController will reffer to list of records 
        controller=new Apexpages.StandardSetController(optyList);
        // set the pagesize: per page how many records
        controller.setPageSize(5);
        // This will specify no of records reffered by the standardSetController
        size=controller.getResultSize(); 
    }
    
}