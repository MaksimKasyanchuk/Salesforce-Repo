public with sharing class StringArrayTest {
    public static List<String> generateStringArray(Integer numOfReturnedStrings) {
        // Create a List of Strings
        List<String> strList = new List<String>();
        // Create a loop
        for (Integer i = 0; i < numOfReturnedStrings; i++) {
            String myStr = 'Test ' + i; // String of test, i of the test depend on the param value numOfReturnedStrings
            strList.add(myStr); // Add a test string to the List
        }
        System.debug(strList);
        return strList; // return the List
    }
}
