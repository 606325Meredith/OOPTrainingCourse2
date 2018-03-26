trigger JobAppForCandidate on Candidate__c (after insert) {

	List<Job_Application__c> newJobApplicationList = new List<Job_Application__c>();
    for(Candidate__c cand : Trigger.new){    
	Job_Application__c newJobApplication = new Job_Application__c();
	newJobApplication.Candidate__c = cand.Id;
    newJObApplicationList.add(newJobApplication);
	
	}
	
	//TODO: Insert newJobApplicationList
	insert newJobApplicationList;
}