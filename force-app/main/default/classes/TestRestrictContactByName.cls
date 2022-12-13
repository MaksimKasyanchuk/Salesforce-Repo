@isTest
private class TestRestrictContactByName {
    @isTest static void testRestrictContactByName() {
        // Create a contact
        Contact con = new Contact(LastName='INVALIDNAME'); // Create a Contact with a LastName required for Test
        insert con; // insert a created Contact

        Test.startTest(); // Start test
        Database.SaveResult result = Database.insert(con, false); // Save Contact result
        Test.stopTest(); // Stop test

        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "'+con.LastName+'" is not allowed for DML', result.getErrors()[0].getMessage());
    }
}
