@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {
    @HttpGet
    global static Account getAccount() {
        RestRequest request = RestContext.request;
        // get an Account id from the between of URI
        String acctId = request.requestURI.substringBetween('Accounts/', '/contacts');
        Account acct = [SELECT Id, Name, (SELECT Id, Name FROM Contacts) FROM Account WHERE Id = :acctId LIMIT 1];
        return acct;
    }
}
