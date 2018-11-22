({
	add : function(component, event, helper) {
		var a=component.find("a").get("v.value");
        var b=component.find("b").get("v.value");
        var c=parseInt(a)+parseInt(b);
        component.find("c").set("v.value",c);
	},
    mul : function(component, event, helper) {
		var a=component.find("a").get("v.value");
        var b=component.find("b").get("v.value");
         var c=parseInt(a)*parseInt(b);
        component.find("c").set("v.value",c);
	},
    reset : function(component, event, helper) {
		component.find("a").set("v.value",0);
        component.find("b").set("v.value",0);
        component.find("c").set("v.value",0);
	}
})