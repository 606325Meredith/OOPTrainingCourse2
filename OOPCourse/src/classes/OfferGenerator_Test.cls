@isTest
private class OfferGenerator_Test {
    
    @testSetup
    private static void createTestData(){
        OfferGenerator og = new OfferGenerator();
        og.createCandidate('Test', 'Candidate');
    }
    
    private static testMethod void testCandidate(){   	
        
        Candidate__c testCandidate = [SELECT Id FROM Candidate__c WHERE First_Name__c = 'Test' AND Last_Name__c = 'Candidate' LIMIT 1];
        
        System.assert(testCandidate != null);
        
        Job_Application__c testJobApplication = [SELECT Id FROM Job_Application__c WHERE Candidate__c =: testCandidate.Id LIMIT 1];
        
        System.assert(testJobApplication != null);
        
        Offer__c testOffer = [SELECT Id FROM Offer__c LIMIT 1];
        
        System.assert(testOffer != null);
    }
}