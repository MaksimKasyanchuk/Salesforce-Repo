public with sharing class ParkLocator{
    public static List<String> country(String country1) {
        // Create an instance of a WSDL Generated Apex Class
        ParkService.ParksImplPort service = new ParkService.ParksImplPort();
        // Return the country
        return service.byCountry(country1);
    } 
}
