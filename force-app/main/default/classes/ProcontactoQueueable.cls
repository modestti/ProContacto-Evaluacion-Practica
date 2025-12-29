public class ProcontactoQueueable implements Queueable, Database.AllowsCallouts {

    private Set<Id> contactIds;

    public ProcontactoQueueable(Set<Id> contactIds) {
        this.contactIds = contactIds;
    }

    public void execute(QueueableContext qc) {

        ProcontactoExecutionContext.isRunning = true;

        try {
            ProcontactoService.syncContact(contactIds);
        } finally {
            ProcontactoExecutionContext.isRunning = false;
        }
    }
}