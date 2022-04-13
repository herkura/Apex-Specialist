public class BatchApex implements Database.Batchable<Sobject>
{
    //start method
    public (Database.QueryLocator | Iterable<sObject>) start(Database.BatchableContext bc)
    {
        // collect the batches of records or objects to be passed to execute'
        return Database.getQueryLocator([//some soql]);
    }
    
    //execute method
    public void execute(Database.BatchableContext bc | List<Sobject> someName)
    {
      // process each batch of records
    }
    
    //finish
   public void finish(Database.BatchableContext bc)
    {
        // execute any post-processing operations
    }
    
}

  //  invoke a batch class, simply instantiate it and then call Database.executeBatch with the instance
      BatchApex myBatchObject = new BatchApex();
 Id batchId = Database.executeBatch(myBatchObject);
