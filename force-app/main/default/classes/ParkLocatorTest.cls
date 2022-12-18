@isTest
private class ParkLocatorTest {
    @isTest static void testService() {
        // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        // Call method that invokes a callout
        List<String> result = ParkLocator.country('United States');
        // Verify that a fake response is returned
        System.assertNotEquals(null, result, 'Result is null');
    }
}
