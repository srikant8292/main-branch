public with sharing class CarSearchHandler {
    
    @AuraEnabled(cacheable=true)
    public static List<Car_Type__c> getCarType(){
        return [SELECT Id, Name from Car_Type__c] ; 
     }
}