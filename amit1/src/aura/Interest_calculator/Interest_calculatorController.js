({
	invoke : function(component, event, helper) {
		var amount=component.find("amount").get("v.value");
        var rate=component.find("rates").get("v.value");
        var year=component.find("years").get("v.value");
        var action=component.get("c.cal");
        action.setParams({"amount":amount,"rate":rate,"years":year});
        action.setCallback(this,function(response){
            var state=response.getstate();
            if(state==='SUCCESS'){
                var result=response.getReturnValue();
                component.find("interest").set("v.value",result);
            }
        });
        $A.enqueueAction(action);
	}
})