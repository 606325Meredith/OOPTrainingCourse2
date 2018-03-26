public with sharing class OfferGenerator {




public void createCandidate(string firstName, string lastName){ 

        Candidate__c newCandidate = new Candidate__c(); 

        newCandidate.First_Name__c = firstName; 

        newCandidate.Last_Name__c = lastName;        

        insert newCandidate;       

        createJobApplication(newCandidate.Id);

}




public void createJobApplication(ID candidateForJobAppId){ 

        Job_Application__c jobApp = new Job_Application__c();       

        jobApp.Candidate__c = candidateForJobAppId; 

        insert jobApp;        

        createOffer(jobApp.Id);

    }



public void createOffer(ID jobAppForOfferId){

Offer__c newOffer = new Offer__c();

newOffer.Offer_Date__c = Date.today(); 

newOffer.Offer_Expiration_Date__c = Date.today().addMonths(1); 

newOffer.Actual_Salary__c = 60000;

newOffer.Status__c ='Sent';        

newOffer.Job_Application__c = jobAppForOfferId; 

insert newOffer;        

        System.debug('New Offer Id: ' + newOffer.Id);

}

}