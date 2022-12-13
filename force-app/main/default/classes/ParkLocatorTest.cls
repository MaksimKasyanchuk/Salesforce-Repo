@isTest
private class ParkLocatorTest {
    @isTest static void testCallout() {
        // This causes a fake response to be sent
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        // Call a method that invokes callout
        List<String> countries = ParkLocator.country('United States'); 
        // Verify that a fake result is returned
        System.assertNotEquals(null, countries, 'No countries passed');
    }
}
