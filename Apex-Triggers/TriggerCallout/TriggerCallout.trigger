trigger TriggerCallout on Sobject(before insert, before update)
{
  Callout.makeCallout();
}
