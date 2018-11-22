public class Opty_Convert {
        public List<Opportunity> optyList {set;get;}
    public Opty_Convert(Apexpages.StandardSetController controller){
        List<String> fields =new List<String>{'Name','Stagename','CloseDate'};
        controller.addFields(fields);
        optyList=(List<Opportunity>)controller.getSelected();
    }
    public PageReference transfer(){
        User u =[select id from User where alias='kchun'];
        for(Opportunity op:optyList){
            op.ownerId=u.Id;
        }
        update optyList;
        PageReference p=new PageReference('/006?fcf=00B7F000008afv4');
        return p;    
    }  
}