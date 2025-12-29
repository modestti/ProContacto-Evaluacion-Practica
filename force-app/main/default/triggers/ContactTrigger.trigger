trigger ContactTrigger on Contact (after insert, after update) {

    // Si el update viene del proceso async → salir
    if (ProcontactoExecutionContext.isRunning) {
        return;
    }

    Set<Id> contactIds = new Set<Id>();

    for (Contact c : Trigger.new) {

        // Solo contactos con idprocontacto
        if (c.idprocontacto__c == null) {
            continue;
        }

        // After insert
        if (Trigger.isInsert) {
            contactIds.add(c.Id);
        }

        // After update → solo si cambió el idprocontacto
        if (Trigger.isUpdate) {
            Contact oldC = Trigger.oldMap.get(c.Id);
            if (oldC.idprocontacto__c != c.idprocontacto__c) {
                contactIds.add(c.Id);
            }
        }
    }

    if (!contactIds.isEmpty()) {
        System.enqueueJob(new ProcontactoQueueable(contactIds));
    }
}