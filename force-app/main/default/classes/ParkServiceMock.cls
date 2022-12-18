@isTest
global class ParkServiceMock implements WebServiceMock {
    global void doInvoke(
        Object stub,
        Object request,
        Map<String, Object> response,
        String endpoint,
        String soapAction,
        String requestName,
        String responseNS,
        String responseName,
        String responseType
    ) {
        // Specify the response you want to send
        ParkService.byCountryResponse country = new ParkService.byCountryResponse();
        country.return_x = new List<String> {'United States'};
        // End
        response.put('return_x', country);
    }
}
