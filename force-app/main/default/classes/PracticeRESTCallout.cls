public with sharing class PracticeRESTCallout {
    public static HttpResponse makeGETCallout() {
        Http http = new Http(); // Create an HTTP method object
        HttpRequest request = new HttpRequest(); // Create an HTTP Request object
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals'); // Create an Endpoint to the req
        request.setMethod('GET'); // Set a GET Method to the request
        HttpResponse response = http.send(request); // Send a request To an HTTP Method 
        // If the request is successfully, parse the JSON response
        if (response.getStatusCode() == 200) { // Check if status code is 200, then
            // Deserialize the JSON String into collections of primitive data types
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            // Cast the values in the 'animals' key as a List
            List<Object> animals = (List<Object>) results.get('animals');
            System.debug('Received the following animals: ');
            for (Object animal : animals) { // Iterate through each animal in animals list
                System.debug(animal); // Debug animal
            }
        }
        return response;
    }

    // POST Method
    public static HttpResponse makePOSTCallout() {
        Http http = new Http(); // Create an HTTP Method Object
        HttpRequest request = new HttpRequest(); // Create an HTTP Request Object
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals'); // Set an Endpoint to the req
        request.setMethod('POST'); // Set the POST Method to request
        request.setHeader('Content-Type', 'application/json;charset=UTF-8'); // Set header for additional info
        // Set the body as a JSON Object
        request.setBody('{"name":"mighty moose"}'); // Add a new animal, using POST Method
        HttpResponse response = http.send(request); // Send a request to an Http method
        // Parse the JSON Response
        if (response.getStatusCode() != 201) { // Check if status code is not 201, then 
            System.debug('The status code returned was expected: ' + response.getStatusCode() + ' '
             + response.getStatus()); 
        } else { // This works if status code is 201
            System.debug(response.getBody());
        }
        return response;
    }
}
