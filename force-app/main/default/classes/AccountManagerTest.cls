@isTest
private class AccountManagerTest {
    @isTest static void testGetAccount() {
        Account acct = new Account (Name='Test account');
        insert acct;
        Contact con = new Contact (LastName='Test Contact', AccountId=acct.Id);
        insert con;
        Id recordId = acct.Id;
        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestURI = 'https://null14-dev-ed.develop.my.salesforce.com/services/apexrest/Accounts/'
        + recordId + '/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call method to test
        Account thisAccount = AccountManager.getAccount();
        // Verify results
        System.assert(thisAccount != null);
        System.assertEquals('Test account', thisAccount.Name);
    }   
}
