// 100% code coverage 
@isTest 
private class TestVerifyDate
{
    @isTest static void TestDateWithin30days() // testing when the date is within 30 days
    {
      Date dateTest = VerifyDate.CheckDates(date.valueOf('2022-04-09'), date.valueOf('2022-04-29'));
      System.assertEquals(date.valueOf('2022-04-29'),dateTest);
    }
     
    // testing when the date is not within 30 days
		@isTest static void TestDateWithin30days() 
    {
      Date dateTest2 = VerifyDate.CheckDates(date.valueOf('2022-04-09'), date.valueOf('2022-07-29'));
      //returns the last day of date.
      System.assertEquals(date.valueOf('2022-04-30'),dateTest2); 								
    }
}
