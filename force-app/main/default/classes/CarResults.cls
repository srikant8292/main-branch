public with sharing class CarResults {
    
    @AuraEnabled(cacheable=true)
    public static List<Car__c> getCars(String carTypeId){
        if(String.isEmpty(carTypeId)){
            return [SELECT Id, Name, Contact__r.Name, Geolocation__Latitude__s, 
            Geolocation__c, Picture__c FROM Car__c WHERE Available_For_Rent__c=true];
        }
        else{
            return [SELECT Id, Name, Contact__r.Name, Geolocation__Latitude__s, 
            Geolocation__c, Picture__c FROM Car__c WHERE Available_For_Rent__c=true AND Car_type__c =: carTypeId];
        }
    }
}