@isTest
global class InterfaceMock implements HttpCalloutMock{
    global HttpResponse respond(HttpRequest request) {
        // Create a fake response
        HttpResponse response = new HttpResponse();
        // Set header for response
        response.setHeader('Content-Type', 'application/json');
        // Set body for response
        response.setBody('{"animals": ["majestic badger", "fluffy bunny", "scary bear", "chicken", "mighty moose"]}');
        // Set status code for response
        response.setStatusCode(200);
        // Return fake response
        return response;
    }
}
