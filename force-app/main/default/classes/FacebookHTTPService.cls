/*

    For this REST Integration class, you need to create a visualforce page, with output body of your response

    <apex:page controller="your_integration_class" title="your_username stats">
        <apex:pageBlock title="Statistics of your_username facebook page">
            <apex:outputText value="{!id}">Page Id: </apex:outputText><br />
            <apex:outputText value="{!name}">Page Name: </apex:outputText><br />
            <apex:outputText value="{!website}">Website: </apex:outputText><br />
        </apex:pageBlock>
    </apex:page>

    Make sure that you passed all properties into your visualforce page

*/

public class FacebookHTTPService {

    // Properties
    public String id{get;set;}
    public String name{get;set;}
    public String website{get;set;}

    // Constructor
    public static void getDataFromFacebook() {
        // Main Variables
        String endpoint = 'https://graph.facebook.com/3003041143333362?fields=id,name,website&access_token=EAASK7oHhLwYBABPLEkzy5bd82cDsOsnAcAFUaOGgkLX1ss7AGwib5XvFiLyMwCxQzQPimLsv9fzYrPpbc9Qcpm4Cp2dWgH6QNHAZAUJ8vtc5Wq6yJLBq2THwZANVlLIRpamNPu8Uq3Wkqnda925vofBpd96ZBXw6ZBUZBZCTMYn3eH5vUuVoBbrypoMt5fWK0RIZC2u1IDWKLAMBOiQZCHN0h1zxtwOPgH6ZCZAZCpHKulmaZC0b2ion1ZCrG&#39';

        // Create an HTTP response
        Http http = new Http();
        // Create a request to HTTP
        HttpRequest request = new HttpRequest();
        // Set an endpoint for request
        request.setEndpoint(endpoint);
        // Set a request method
        request.setMethod('GET');
        // Create a response to the HTTP
        HttpResponse response = http.send(request);
        // Get a response body
        String body = response.getBody();

        // Deserialize a JSON data
        Map<String, Object> result_map = (Map<String, Object>) JSON.deserializeUntyped(body);
        System.debug(result_map);
        System.debug(body);

        // Authorize JSON Data
        String id = (String) result_map.get('id');
        String name = (String) result_map.get('name');

        System.debug(id);
        System.debug(name);
    }
}
