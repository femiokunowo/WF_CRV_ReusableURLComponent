({
    doInit: function(component, event, helper){
        //get transaction ID from the component
        var trxnId = component.get("v.TransactionID");
        console.log("Transaction ID: " + trxnId);
        
        var action = component.get("c.getTargetUrl");
        // set parameter for the getTargetUrl method
        action.setParams({"transactionId" : trxnId});
        
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state === "SUCCESS") {
                // fire the target URL
                console.debug(response.getReturnValue().length);
                component.set("v.UrlValue", response.getReturnValue());
                var dismissActionPanel = $A.get("e.force:closeQuickAction");
                dismissActionPanel.fire();
                window.open(response.getReturnValue());
                
            } else {
                console.debug(response.error[0].message);
            }
        });
        $A.enqueueAction(action);
    }
})