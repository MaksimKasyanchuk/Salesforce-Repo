public with sharing class ParkLocator {
    public static List<String> country(String country1) {
        ParkService.ParksImplPort result = new ParkService.ParksImplPort();
        return result.byCountry(country1);
    }
}
