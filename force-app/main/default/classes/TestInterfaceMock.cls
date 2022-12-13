@isTest
private class TestInterfaceMock {
    @isTest static void testMyHttpPost() {
        // Set mock callout class
        Test.setMock(HttpCalloutMock.class, new InterfaceMock());
        // This causes a fake response to be sent
        // from the class that implements HttpCalloutMock.
        // Create a response
        HttpResponse response = HttpExample.myHttpPost();
        // Verify all
        String contentType = response.getHeader('Content-Type');
        System.assert(contentType == 'application/json');
        String actualValue = response.getBody();
        System.debug(actualValue);
        String expectedValue = '{"animals": ["majestic badger", "fluffy bunny", "scary bear", "chicken", "mighty moose"]}';
        System.assertEquals(expectedValue, actualValue);
        System.assertEquals(200, response.getStatusCode());
    }
}
