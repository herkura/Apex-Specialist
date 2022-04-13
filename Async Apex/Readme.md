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
     
