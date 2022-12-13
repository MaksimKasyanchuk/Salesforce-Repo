@isTest
private class TestVerifyDate {
    @isTest static void testCheckDates() {
        Date myDate = VerifyDate.CheckDates(Date.newInstance(2020, 2, 1), 
                                            Date.newInstance(2020, 2, 10));
    }
    @isTest static void testCheckDatesNegative() {
        Date myDate = VerifyDate.CheckDates(Date.newInstance(2020, 2, 1), 
                                            Date.newInstance(2020, 20, 10));
    }
    @isTest static void testDateWithin30Days() {
        System.assertEquals(
            false,
            Date.newInstance(2020, 2, 10) < Date.newInstance(2020, 2, 1)
        );

        Date date30Days = Date.newInstance(2020, 2, 1).addDays(30);
        System.assertEquals(
            false,
            Date.newInstance(2020, 2, 10) >= date30Days
        );
    }
}
