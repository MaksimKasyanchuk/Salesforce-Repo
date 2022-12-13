public with sharing class ClosedOpportunityTriggerHandler {
    public static void handler() {
        List<Task> taskList = new List<Task>(); // Create a Task List
        for (Opportunity opp : (List<Opportunity>) Trigger.new) { // Go through each opportunity
            if (opp.StageName == 'Closed Won') { // See if the Stage Name is Closed Won
                Task task = new Task(); // if is Closed Won, then create a new Task with its unique subject, and opportunity ID
                task.Subject = 'Follow Up Test Task';
                task.WhatId = opp.Id;
                taskList.add(task); // Add Task to the Task List
            }
        }
        if (taskList.size() > 0) {
            insert taskList; // Insert Task List
        }
    }
}
