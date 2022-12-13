public with sharing class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numOfContacts, String contactLastname) {
        // Create a Contact List
        List<Contact> conList = new List<Contact>();
        // Iterate through the Loop
        for (Integer i = 0; i < numOfContacts; i++) {
            Contact con = new Contact(FirstName='Test ' + i, LastName=contactLastname);
            conList.add(con); // add a Contact to the Contact List
        }
        return conList; // return List
    }
}
