public with sharing class CandidateExperience {

    public void getCandidatesWithExperience(Integer yearsExperience){
        
        List<Candidate__c> experiencedCandidates = [SELECT Name, Id, Last_Name__c, First_Name__c, Email__c, Years_of_Experience__c 
                                                    FROM Candidate__c
                                                    WHERE Years_of_Experience__c >= : yearsExperience];
        
        for(Candidate__c cand : experiencedCandidates){
            System.debug(cand.First_Name__c + ' ' + cand.Last_Name__c);
            System.debug(cand.Email__c);
            System.debug('Experience: ' + cand.Years_of_Experience__c + ' years');
        }        
    }
}