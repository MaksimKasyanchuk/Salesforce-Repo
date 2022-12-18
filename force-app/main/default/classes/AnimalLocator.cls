public with sharing class AnimalLocator {
    /*
    Create an Apex class:
    Name: AnimalLocator
    Method name: getAnimalNameById
    The method must accept an Integer and return a String.
    The method must call https://th-apex-http-callout.herokuapp.com/animals/<id>, replacing <id> with the ID passed into the method 
    The method returns the value of the name property (i.e., the animal name)
    Create a test class:
    Name: AnimalLocatorTest
    The test class uses a mock class called AnimalLocatorMock to mock the callout response
    Create unit tests:
    Unit tests must cover all lines of code included in the AnimalLocator class, resulting in 100% code coverage
    Run your test class at least once (via Run All tests the Developer Console) before attempting to verify this challenge
    */

    public static String getAnimalNameById(Integer id) {
        // Create an Http
        Http http = new Http();
        // Make a request
        HttpRequest request = new HttpRequest();
        // Set an endpoint (URI)
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + id);
        // Set a method
        request.setMethod('GET');
        // Set a header
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        // Make a response
        HttpResponse response = http.send(request);
        // Get the body of JSON
        Map<String, Object> body = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
        // Get an animal from the JSON body
        Map<String, Object> animal = (Map<String, Object>) body.get('animal');
        // Get a name of the animal
        String animalName = (String) animal.get('name');

        // Return a name of type String
        return animalName;
    }
}
