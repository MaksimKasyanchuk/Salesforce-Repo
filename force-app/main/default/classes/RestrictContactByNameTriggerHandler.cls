public with sharing class RestrictContactByNameTriggerHandler {
    public static void handler() {
        for (Contact c : (List<Contact>) Trigger.new) {
            if (c.LastName == 'INVALIDNAME') {
                c.addError('The Last Name "'+c.LastName+'" is not allowed for DML');
            }
        }
    }
}
