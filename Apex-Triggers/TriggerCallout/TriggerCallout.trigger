//trigger on any Sobject
trigger TriggerCallout on Sobject(before insert, before update)
{
  Callout.makeCallout();
}
