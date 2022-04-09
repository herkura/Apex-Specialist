trigger SoqlTriggerBulk on Sobject(after update)
{
/getting the Sobject data for this trigger
//using binding operator 
  List<Sobject> ls = [SELECT Id, Name FROM childSobject WHERE parentSobjectId IN :Trigger.New];
  
  // once the records are retreived from the db and stored in a list
  // iterating over that list
  for(childSobject s : ls)
  {
    //some logic
  }
}

// the above can be optimized by using a soql for loop and then performing the logic
trigger SoqlTriggerBulk on Sobject(after update)
{
   for(childSobject s : [SELECT Id, Name FROM childSobject WHERE parentSobjectId IN :Trigger.New ])
   {
    // some processing.
   }
}
