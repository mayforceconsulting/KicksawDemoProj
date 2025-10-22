public with sharing class LeadTriggerHandler extends TriggerHandler {
  public LeadTriggerHandler() {
    //If desired could use a Custom Metadata Type for max loop count
    //LeadTriggerSettings__mdt leadTriggerSettings = LeadTriggerSettings__mdt.getInstance('LeadTriggerSettings');
    //then set the max loop count using the Custom Metadata Type
    //this.setMaxLoopCount(Integer.valueOf(leadTriggerSettings.Max_Loop_Count__c));
    //But for this demo I'm hardcoding the value.
    this.setMaxLoopCount(1);
  }

  public override void afterInsert() {
    List<Lead> leads = (List<Lead>) Trigger.new;
    System.debug('LeadTriggerHandler afterInsert');
  }

  public override void afterUpdate() {
    List<Lead> leads = (List<Lead>) Trigger.new;
    System.debug('LeadTriggerHandler afterUpdate');
  }
}
