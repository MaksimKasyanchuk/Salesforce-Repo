public with sharing class HttpExample {
    public static HttpResponse myHttpGet() {
        // Create an HTTP 
        Http http = new Http();
        // Create a request
        HttpRequest request = new HttpRequest();
        // Set an endpoint for the request
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        // Set a method for the request
        request.setMethod('GET');
        // Create a response for an HTTP
        HttpResponse response = http.send(request);
        // if the request is successful, parse the JSON response
        if (response.getStatusCode() == 200) {
            // Create a Map which has a result, body of the endpoint
            Map<String, Object> result = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            // Create a List of animal objects
            List<Object> animals = (List<Object>) result.get('animals');
            System.debug('Received the following animals: ');
            // Iterate through each animal of the list
            for (Object animal : animals) {
                // Debug animal
                System.debug(animal);
            }
        }
        return response;
    }
    public static HttpResponse myHttpPost() {
        // Create an HTTP
        Http http = new Http();
        // Create a request
        HttpRequest request = new HttpRequest();
        // Set an endpoint for the request
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        // Set a method for the request
        request.setMethod('POST');
        // Set a header for the request
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        // Set the body as a JSON Object for the request
        request.setBody('{"name":"mighty moose"}');
        // Add the animal name: "sturdy elephant"
        request.setBody('{"name":"sturdy elephant"}');
        // Create a response for the HTTP
        HttpResponse response = http.send(request);
        // Parse the JSON response
        if (response.getStatusCode() != 201) {
            System.debug('The status code was not expected: ' + response.getStatusCode() + ' ' + response.getStatus());
        } else {
            System.debug(response.getStatusCode());
            System.debug(response.getBody());
        }
        return response;
    }
}
