public with sharing class CarOfferDataFactory {
    
    public static List<Dealership__c> createDealersWithAccount(Integer numberOfDealers){
        
        Integer randomNumber = Integer.valueof((Math.random() * 1000));
        Account acc = new Account(Name='Test Account' + randomNumber);    
        insert acc;

        List<Dealership__c> dealerships = new List<Dealership__c>();

        for(Integer i = 0; i < numberOfDealers; i++){
            dealerships.add(new Dealership__c(Name='Test Dealer 1', Account__c = acc.Id));
        }
        
        return dealerships;
    }
}
