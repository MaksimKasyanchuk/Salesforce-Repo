trigger AccountAddressTrigger on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    if (Trigger.isBefore && Trigger.isInsert) {
        AccountAddressTriggerHandler.handler();
    }
}