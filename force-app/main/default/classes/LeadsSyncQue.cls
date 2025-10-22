public with sharing class LeadsSyncQue implements Queueable, Database.AllowsCallouts {
  private List<lead> leads;
  public LeadsSyncQue(List<lead> leads) {
    this.leads = leads;
  }

  public void execute(QueueableContext context) {
  }
}
