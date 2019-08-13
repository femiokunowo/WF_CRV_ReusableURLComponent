# WF_CRV_ReusableURLComponent
The customURLComponent is a lightning component that is reusable in parent component. The component has an attribute that accepts 
the target URL value. The value of the target URL is passed from the parent component
The CardReplacement.cmp is parent component in this case leveraging the custom URL component. The parent component calls an aura-enabled method 
in CRV_TTMUtility.cls class which gets the value of the target URL from a custom object. The returned URL value is then passed to the custom URL 
component.
The target URL is then automatically launched in a browser.
The attached PDF shosw how all these tie together
