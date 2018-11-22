({
	calculate : function(component, event, helper) {
		var amount=component.get("v.amount");
        var year=component.get("v.year");
        var rate=component.get("v.rate");
        var interest=(amount*year*rate)/100;
        component.set("v.interest",interest);
	},
    show : function(component){
        alert('This is show call');
    },
    call : function(component){
        alert('This is call');
    }
})