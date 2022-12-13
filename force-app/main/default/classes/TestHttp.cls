@isTest
private class TestHttp {
    @isTest static void testMyHttpGet() {
        // Create an instance of mock callout (static resource)
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetAnimalsResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);
        // Call method to test
        HttpResponse response = HttpExample.myHttpGet();
        // Verify that mock response is not null
        System.assertNotEquals(null, response, 'Response is null');
        // Verify status code
        System.assertEquals(200, response.getStatusCode(), 'Response status code is not 200');
        // Verify content type
        System.assertEquals('application/json;charset=UTF-8', response.getHeader('Content-Type'), 'Undefined content');
        // Verify the array contains 4 items
        Map<String, Object> result = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
        List<Object> animals = (List<Object>) result.get('animals');
        System.assertEquals(4, animals.size(), 'Size is less or greater than 4'); 
    }
}

