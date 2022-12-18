@isTest
global class AnimalLocatorMock implements HttpCalloutMock {
    // Implement this interface method (respond)
    global HttpResponse respond(HttpRequest request) {
        // Create a fake response
        HttpResponse response = new HttpResponse();
        // Set the response header
        response.setHeader('Content-Type', 'application/json');
        // Set the response body
        response.setBody('{"animal":{"id":0,"name":"","eats":"","says":""}}');
        // Set the response status code
        response.setStatusCode(200);
        // Return the response with status code 200
        return response;
    }
}
