({
	showMe : function(component, event, helper) {
        var abc=component.get("c.callMe"); // callme is the method of the apex class 
        abc.setCallback(this,function(response){
            var state=response.getState();
            if(state === 'SUCCESS'){
               var result=response.getReturnValue();
               component.set("v.result",result);
               console.log("Result:"+result);
              }else{
               console.log('state failed');
              }
        });
        $A.enqueueAction(abc);//we are adding the action to the queue
	}
})