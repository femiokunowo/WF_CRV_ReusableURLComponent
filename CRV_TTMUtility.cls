/**
 * @File Name          : CRV_TTMUtility.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 8/13/2019, 10:24:03 AM
 * @Modification Log   : 
 *==============================================================================
 * Ver         Date                     Author      		      Modification
 *==============================================================================
 * 1.0    8/13/2019, 10:24:03 AM   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public class CRV_TTMUtility {

    @AuraEnabled
    public static String getTargetUrl(string transactionId) {
        
        string endPointUrl;       
        List<Transaction__c> trxn = [SELECT Id, TargetURL__c, Parameter_1__c, Parameter_2__c from 
                                            Transaction__c WHERE Name = : transactionId LIMIT 1];
        if(trxn.size() > 0)
        {
            // retrieve the targetUrl, concatenate with queryString paramater(s)
    		endPointUrl = trxn[0].TargetURL__c;       
	            
        }
	      return endPointUrl;
    }
}