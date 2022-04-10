//This is a test for trigger when the LastName field of Sobject Contact is entered as 'INVALIDNAME' 
// then trigger should return an error message.

@isTest
private class TestRestrictContactByName
{
  @isTest static void TestContactLastName()
  {
     //setup the contact LastName
     Contact c = new Contact(LastName='INVALIDNAME');
    
     Test.startTest();
     Database.SaveResult res = Database.insert(c,false);  //partial Processing
     Test.stopTest();
     System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', res.getErrors()[0].getMessage());
     
  }
}
