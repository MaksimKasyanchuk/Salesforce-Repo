public with sharing class AnimalLocator {
    public static String getAnimalNameById(Integer id) {
        // Create HTTP
        Http http = new Http();
        // Create a request for HTTP
        HttpRequest request = new HttpRequest();
        // Set an endpoint
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + id);
        // Set a method 
        request.setMethod('GET');
        // Create a response
        HttpResponse response = http.send(request);

        // Take a response body
        Map<String, Object> result = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
        Map<String, Object> animal = (Map<String, Object>) result.get('animal');
        String animalName = (String) animal.get('name');

        return animalName;
    }
}
