trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    if (Trigger.isAfter && Trigger.isInsert) { // if trigger is after insert
        ClosedOpportunityTriggerHandler.handler();
    }
}