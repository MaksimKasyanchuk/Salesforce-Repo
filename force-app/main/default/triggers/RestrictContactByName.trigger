trigger RestrictContactByName on Contact (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    if (Trigger.isBefore && Trigger.isInsert) {
        RestrictContactByNameTriggerHandler.handler();
    }
}