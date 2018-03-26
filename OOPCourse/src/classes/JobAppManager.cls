public with sharing class JobAppManager {
    
    //TODO: This is the method to create a job application for a candidate
    public void createJobAppForCandidate(List<Candidate__c> candidateForJobApp){
        
        //TODO: Declare a new List named newJobApplicationList. The type of the list is Job_Application__c.
        List<Job_Application__c> newJobApplicationList = new List<Job_Application__c>();
        //TODO: Create a loop to iterate over all of the values in candidateForJobApp...
        //... Name the iteration variable candidate.
        ////TODO: Declare a new Job Application named newJobApplication.
        ////TODO: Assign the ID of the loop iteration variable, candidate,****** 
        ////to the Candidate__c field of newJobApplication
        ////TODO: Add newJobApplication to newJobApplicationList
        for(Candidate__c candidate : candidateForJobApp){
            Job_Application__c newJobApplication = new Job_Application__c();  
            //newJobApplication.candidate = candidateForJobApp.id  this is how I first did it.*****
            newJobApplication.Candidate__c = candidate.Id;
            newJobApplicationList.add(newJobApplication);
        }
        insert newJobApplicationList;
        
    }
}