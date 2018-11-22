public class Schema_Example_1 {
    public Map<String,Object> resMap {set;get;}
    public Schema_Example_1(){
        resMap=new Map<String,Object>();
        // Schema.DescribeSobjectResult : This class will contain the methods required to fetch the 
        // 								  properties of the given sobject
        Schema.DescribeSobjectResult result =Account.SobjectType.getDescribe();
        resMap.put('Label', result.getLabel());
        resMap.put('Name',result.getName());
        resMap.put('Read',result.isAccessible());
        resMap.put('Write',result.isUpdateable());
        resMap.put('Delete',result.isDeletable());
        resMap.put('Undelete',result.isUndeletable());
        resMap.put('Custom',result.isCustom());
        resMap.put('CustomSetting',result.isCustomSetting());
        resMap.put('Create',result.isCreateable());
        resMap.put('Query',result.isQueryable());
        resMap.put('Merge',result.isMergeable());
    }
}