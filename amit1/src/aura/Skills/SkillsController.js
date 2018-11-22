({
 doSave : function(component, event, helper) {
  // Server side controller calling logic. 
        
        //Calling server side controller's saveStudent() method.
        var action = component.get("c.saveStudent");
        //Set method parameter of saveStudent() method.
        action.setParams({"student": component.get("v.skill")});
        
        action.setCallback(this, function(response){
            //<response.getState()> return response status as SUCCESS/ERROR/INCOMPLETE etc.
            var state = response.getState();
            //If response from server side is <SUCCESS>, then we will display a success message.
            if (state === "SUCCESS"){
                //Success message display logic.
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    "title": "Success!",
                    "message": "Student record has been inserted successfully."
                });
                toastEvent.fire();
            }else if (state === "INCOMPLETE") {
                //Offline message display logic.
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    "title": "OFFLINE!",
                    "message": "You are in offline."
                });
                toastEvent.fire();
            }else if (state === "ERROR") {
                //Error message display logic.
                var errors = response.getError();
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    "title": "ERROR!",
                    "message": errors[0].message
                });
                toastEvent.fire();
            }else {
                //Unknown message display logic.
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    "title": "UNKOWN!",
                    "message": "Unknown error."
                });
                toastEvent.fire();
            }
        });
        
        $A.enqueueAction(action);
 }
})