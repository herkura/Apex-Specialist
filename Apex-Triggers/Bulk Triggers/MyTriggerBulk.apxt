trigger MyTriggerBulk on Sobject(before insert)
{
  for(Sbject s : Trigger.New)
  {
    s.recordType = 'some info';
  }
}
