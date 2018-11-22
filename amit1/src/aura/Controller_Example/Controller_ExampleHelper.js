({
	fun : function(component,event) {
		var button1=event.getSource(); //this will return the element pn which event has occured
        var msg=button1.get('v.label'); //this will return the value of the element in case of 
        								// of button label name of the button will be returned.
        var result='you have clicked on'+msg;
        component.set("v.result",result);//this will set the value of the attribute result.
	}
})