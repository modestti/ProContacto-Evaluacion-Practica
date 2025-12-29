public class ProcontactoService {

    @future(callout=true)
    public static void syncContact(Set<Id> contactIds) {

        if (contactIds == null || contactIds.isEmpty()) {
            return;
        }

        List<Contact> contacts = [
            SELECT Id, idprocontacto__c, Email
            FROM Contact
            WHERE Id IN :contactIds
            AND idprocontacto__c != null
        ];

        List<Contact> contactsToUpdate = new List<Contact>();

        for (Contact c : contacts) {

            String endpoint =
                'https://procontacto-reclutamiento-default-rtdb.firebaseio.com/contacts/'
                + c.idprocontacto__c + '.json';

            HttpRequest req = new HttpRequest();
            req.setEndpoint(endpoint);
            req.setMethod('GET');
            req.setTimeout(12000);

            try {
                Http http = new Http();
                HttpResponse res = http.send(req);

                if (res.getStatusCode() == 200 &&
                    String.isNotBlank(res.getBody()) &&
                    res.getBody() != 'null') {

                    // JSON plano: { "email": "...", "name": "..." }
                    Map<String, Object> contactData =
                        (Map<String, Object>) JSON.deserializeUntyped(res.getBody());

                    if (contactData != null && contactData.containsKey('email')) {
                        String emailFromWS = (String) contactData.get('email');

                        if (String.isNotBlank(emailFromWS)) {
                            c.Email = emailFromWS;
                            contactsToUpdate.add(c);
                        }
                    }
                }

            } catch (Exception e) {
                System.debug('Excepción en ProcontactoService.syncContact: ' + e.getMessage());
            }
        }

        if (!contactsToUpdate.isEmpty()) {
            update contactsToUpdate;
        }
    }
}