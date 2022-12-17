public class FacebookHTTPService {

    // Properties
    public String id{get;set;}
    public String name{get;set;}
    public String website{get;set;}

    // Constructor
    public static void getDataFromFacebook() {
        // Main Variables
        String endpoint = 'https://graph.facebook.com/3003041143333362?fields=id,name,website&access_token=EAASK7oHhLwYBAPMXR8lvv4IeIZAEqIkvJ1ghuQTKeAEZBND15Cmp6S8jeOmZCzUrsH4ySK2Qvblv2pkm0M54AvDEgn9SwZAuywCZAO1r1VOxBq55li1zmbvBy206TbGtuHHGOT7V73NgWAhlud6UFsCOhAesZCDo4iu1IPlXBfqTvEUWgxhcPoJNsp6p0x3J2t1hcPZAnc91UFNQ9anvw2ZC&#39';

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
        String body = response.body();
    }
}
