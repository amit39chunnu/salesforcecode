/* 
 * Aggregate Functions : 
1. These are used to aggegate the result fetched in soql query . 
    
2. Count() : This method will return count of no of record fetched in the soql query .
   
    Integer count =[select count() from Account];
	System.debug('Count :'+count);

3. Sum(FieldName) : This will return summarized value of given field from the queryResult. 
   
4. MAX(FieldName) : This will return max value of a given field from the queryResult.
    
5. MIN(FieldName) : This will return min value of a given field from the queryResult.
    
6. AVG(FieldName) : This will return avg value of a given field from the queryResult.
    
Note : SOQL Query will return List<Sobject>
     : SOQL query with Aggegate functions will return you  AggregateResult 
         
 AggregateResult result = [select Sum(Amount)total,MIN(Amount)minval,MAX(Amount)maxval,AVG(Amount)avgval from Opportunity ];
 
 Decimal total=(Decimal)result.get('total'); // result.get(aliasname)
 Decimal minval=(Decimal)result.get('minval');
 Decimal maxval=(Decimal)result.get('maxval');
 Decimal avgval=(Decimal)result.get('avgval');
 System.debug('Total :'+total);
 System.debug('MinVal:'+minval);
 System.debug('MaxVal:'+maxval);
 System.debug('AVgVal:'+avgval);


Group By FieldName : 

if you use soql query with Aggregate functions with Group by clause ,It will return List<AggergateResult>
    
 
 List<AggregateResult> myList = [select stagename,Sum(Amount)total,MIN(Amount)minval,MAX(Amount)maxval,AVG(Amount)avgval from Opportunity group by StageName ];
 
 for(AggregateResult result :myList){
    String stage=(String)result.get('stagename');
 	Decimal total=(Decimal)result.get('total'); // result.get(aliasname)
 	Decimal minval=(Decimal)result.get('minval');
 	Decimal maxval=(Decimal)result.get('maxval');
 	Decimal avgval=(Decimal)result.get('avgval');
    System.debug('========>> StageName :'+stage);
 	System.debug('Total :'+total);
 	System.debug('MinVal:'+minval); 
 	System.debug('MaxVal:'+maxval);
 	System.debug('AVgVal:'+avgval);
 }

Note : If you using group by ,Every field we are querying should be a part of group by or Aggregate

FOR UPDATE : This will lock the record from getting updated from other transactions untill the current transaction
  		     is completed .

List<Account> accounts =[select name ,phone,industry from Account FOR UPDATE];

ALL ROWS : Thiswill return all the records including the records which are deleted in last 15 days 
*/
public class Aggregate_SOQL_Example {

}