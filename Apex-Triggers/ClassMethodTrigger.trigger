//this trigger sends email to the mail address when trigger is fired 
trigger ClassMethodTrigger on Sobject(before insert, after delete)
{
if(Trigger.isInsert){
    Integer recordCounts = Trigger.New.Size();
    //calling the class method
    EmailManager.sendMail('Your email address', 'Trailhead Trigger Tutorial', 
                    recordCount + ' contact(s) were inserted.');
} 
else if (Trigger.isDelete) {
        // Process after delete
    }
}
