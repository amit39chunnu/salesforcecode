({
	invoke : function(component, event, helper) {
       	var abc=component.get(c.call);
        abc.setCallback(this,function(response){
            var state=response.getState();
            if(state==="Success"){
                var result=response.getReturnValue();
                component.set("v.customerName",result);
                console.log("result"+result);
            }else{
                cosole.log('result fail');
            }
        });
        $A.enqueueAction(abc);
		
	}
})