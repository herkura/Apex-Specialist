// To access the records we are using context var i.e. ".new"
//With Trigger.new am iterating over all the new updates list of records in the Sobject
trigger contextVarTrigger on Sobject(before insert, before update)
{
    for(Sobject s : Trigger.new)
    {
        //some logic
    }

}

/*
There are other types of context var
such as boolean like:
isInsert, isBefore, isAfter, isDelete
*/
trigger BooleanEgTrigger on Sobject(before insert, after insert, after delete)
{
       if(Trigger.isInsert) // returns true if trigger was fired due to an insert operation
       {
         if(Trigger.isBefore)
         {
          //process before trigger is fired.
         }
         else if(Trigger.isAfter)
         {
          // process after the trigger is fired.
         }
       }
       else if(Trigger.isDelete)
       {
            // process after deletion
       }
}
