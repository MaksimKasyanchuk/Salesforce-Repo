@isTest
private class AnimalLocatorTest {
    @isTest
    private static void testGetAnimalNameById() {
        // Set mock callout class
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        // Get animal within id
        String animal = AnimalLocator.getAnimalNameById(1);
    }
}
