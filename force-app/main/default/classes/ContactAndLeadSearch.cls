public with sharing class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String myString) {
        // Create a list of lists of Type SObject and find lastname of the Lead and Contact
        List<List<SObject>> search = [FIND :myString IN ALL FIELDS RETURNING Contact(LastName), Lead(LastName)];
        System.debug(search);
        return search; // return List of Lists
    }
}
