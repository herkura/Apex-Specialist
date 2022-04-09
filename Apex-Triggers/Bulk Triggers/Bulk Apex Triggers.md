## Points to Note about Bulk Apex Triggers 
* Triggers are more optimized to operate in bulk.
* Use less server resources and are less likely to exceed platform limits.
* Bulk code can process large number of records efficietly and run with governer limits.
* bulkifying the code can be done via: operating on all records in the trigger, 
  and performing SOQL and DML on collections of sObjects instead of single sObjects at a time.
* [Bulkifying via Operating on all Records](https://github.com/herkura/Apex-Specialist/blob/main/Apex-Triggers/Bulk%20Triggers/MyTriggerBulk.apxt)
