({
	calc : function(component, event, helper) {
		var price=component.get("v.price");
        var quant=component.get("v.quant");
        var total=price*quant;
        component.set("v.total",total);
	}
})