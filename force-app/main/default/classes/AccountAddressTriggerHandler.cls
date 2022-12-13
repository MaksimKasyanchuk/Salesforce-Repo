public with sharing class AccountAddressTriggerHandler {
    public static void handler() {
        // Create Account List
        List<Account> acctList = [SELECT Match_Billing_Address__c, ShippingPostalCode, BillingPostalCode FROM Account];
        // Go through each element of Account List
        for (Account a : (List<Account>) Trigger.new) {
            if (a.Match_Billing_Address__c) { // See if match billing address checkbox is checked
                a.ShippingPostalCode = a.BillingPostalCode; // if checked, make shipping postal code and billing postal code equal
            }
        }
    }
}
