({
	calc : function(component, event, helper) {
		var amount=component.get("v.amount");
        var year=component.get("v.year");
        var rate=component.get("v.rate");
        var interest=(amount*year*rate)/100;
        component.set("v.interest",interest);
	},
    reset : function(component,event,helper){
    component.set("v.amount",0);
    component.set("v.year",0);
    component.set("v.rate",0);
    component.set('v.interest',0);
}
})