public class PluginExample implements Process.Plugin {
    public Process.PluginResult invoke(Process.PluginRequest request){
        Decimal exp =(Decimal)request.inputparameters.get('exp');
        String name=(String)request.inputparameters.get('name');
        Decimal salary,bonus;
        if(exp >5){
            salary=50000;
            bonus=5000;
        }else{
            salary=40000;
            bonus=4000;
        }
        Map<String,Object> resMap=new Map<String,Object>();
        resMap.put('salary',salary);
        resMap.put('bonus',bonus);
        Process.PluginResult result=new Process.PluginResult(resMap);
        return result;
    }
    public Process.PluginDescribeResult describe(){
        Process.PluginDescribeResult.inputParameter ip1 =new Process.PluginDescribeResult.Inputparameter('exp',Process.PluginDescribeResult.ParameterType.Decimal,true);
        Process.PluginDescribeResult.Inputparameter ip2 = new Process.PluginDescribeResult.Inputparameter('name',Process.PluginDescribeResult.ParameterType.String,true);
    	Process.PluginDescribeResult.Outputparameter op1 =new Process.PluginDescribeResult.Outputparameter('salary',Process.PluginDescribeResult.parameterType.Decimal);
        Process.PluginDescribeResult.Outputparameter op2 = new Process.PluginDescribeResult.Outputparameter('bonus',Process.PluginDescribeResult.ParameterType.Decimal);
    	Process.PluginDescribeResult result =new Process.PluginDescribeResult();
        result.inputparameters= new List<Process.PluginDescribeResult.Inputparameter>{ip1,ip2};
        result.outputparameters= new List<Process.PluginDescribeResult.Outputparameter>{op1,op2};
        return result;         
    }
}