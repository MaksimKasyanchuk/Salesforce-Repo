public with sharing class AccountHandler {
    public static Account insertNewAccount(String acctName) {
        // Create an Account, with acctName param passed into the Name field
        Account acct = new Account(Name=acctName);
        try {
            // Insert an Account, so Account will have its own Id
            insert acct;
        } catch (DmlException e) {
            // Catching an Error (DmlException)
            System.debug('A DML exception has occured: ' + e.getMessage());
            return null; // Account is null
        }
        return acct; // Return account with acctName value
    }
}
