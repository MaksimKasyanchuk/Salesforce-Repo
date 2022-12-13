@isTest
private class AnimalsCalloutsTest {
    @isTest static void testPOSTCallout() {
        // Set mock callout class
        Test.setMock(HttpCalloutMock.class, new AnimalsCalloutsTest());
        // This causes a fake response to be sent
        // from the class that implements HttpCalloutMock
        HttpResponse response = AnimalsCallouts.makePOSTCallout();
        // Verify that the response received contains fake values
        String contentType = response.getHeader('Content-Type');
        System.assert(contentType == 'application/json');
        String actualValue = response.getBody();
        System.debug(response.getBody());
        String expectedValue = '{"animals": ["majestic badger", "fluffy bunny", "scary bear", "chicken", "mighty moose"]}';
        System.assertEquals(expectedValue, actualValue);
        System.assertEquals(200, response.getBody());
    }    
}
