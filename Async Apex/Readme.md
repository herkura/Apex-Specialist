## Asynchronous Apex
* Runs code in seperate thread
* Asynchronous process is a process or function that executes a task "in the background" without the user having to wait for the task to finish.
* Key benefits:
    * User Efficiency
    * Scalability
    * Increased Governer Limits  

### Future Method:  Important things to remember while using future method
     Future methods must be static methods.
     method only returns a void type.
     Best practice is to pass the List<Id> which is to be processed asynchronously.
     
### Batch Apex: 
* Used to run large jobs that exceeds normal processing limits.
* Process records asynchronously in batches to stay within platform limits.
* Every transaction starts with new set of governer limits. 
* Since these batches are asynchronous, if one batch fails all the other batches are not rolled back.
* Syntax : 
    * For executing batch apex, implement Database.Batchable interface
    * Must include 3 methods:
        * start - Collect records or objects, this method is called only once, returns either Database.QueryLocator or Iterable that contains the record
        * execute - performs the processing, takes 2 parameters : 1) Database.BatchableContext and 2) List of sobject
        * finish - called once after all the batches are processed and used to execute pre processing ops like sending an email
          
### Queueable Apex: 
