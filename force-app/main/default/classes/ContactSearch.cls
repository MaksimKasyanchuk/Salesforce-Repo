public with sharing class ContactSearch {
    public static List<Contact> searchForContacts(String conLastName, String conMailingPostalCode) {
        // Create a Contact List where LastName and MailingPostalCode are matching params
        List<Contact> conList = [SELECT ID, Name, LastName, MailingPostalCode FROM Contact WHERE
                        LastName = :conLastName AND MailingPostalCode = :conMailingPostalCode];
        return conList; // return a List
    }
}
