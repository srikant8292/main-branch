public class ContactTriggerActiveHandaler {
    public static void Afterinserthander(LIst<Contact> listcon){
        Set<Id> accountIds = new Set<Id>();
            for (Contact con : listcon) {
                if (String.isNotBlank(con.AccountId)) {
                    // write automation logic here
                    accountIds.add(con.AccountId);
                }
            }
            // get aggregate result for all accounts
           ApexActiveContacthander.Activeconhandler(accountIds);
    }
    
    public static void Afterupdatehander(List<Contact> listcon,Map<Id,Contact> mapcon){
        
        Set<Id> accountIds = new Set<Id>();
            for (Contact con : listcon) {
                if (String.isNotBlank(con.AccountId) && mapcon.get(con.Id).Active__c!=con.Active__c) {
                    // write automation logic here
                    accountIds.add(con.AccountId);
                }
                else if(mapcon.get(con.Id).AccountId!=con.AccountId){
                    accountIds.add(con.AccountId);
                    accountIds.add(mapcon.get(con.Id).AccountId);
                }
            }
        
        ApexActiveContacthander.Activeconhandler(accountIds);
            // get aggregate result for all accounts
           
    }
    
    public static void afterdeletehandler(List<Contact> oldcontact){
         Set<Id> accountIds = new Set<Id>();
            for (Contact con : oldcontact) {
                if (String.isNotBlank(con.AccountId)) {
                    // write automation logic here
                    accountIds.add(con.AccountId);
                }
            }
            // get aggregate result for all accounts
           ApexActiveContacthander.Activeconhandler(accountIds);
        
    }
    
    public static void afterundeletehandler(List<Contact> newcontact){
        Set<Id> accountIds = new Set<Id>();
            for (Contact con : newcontact) {
                if (String.isNotBlank(con.AccountId)) {
                    // write automation logic here
                    accountIds.add(con.AccountId);
                }
            }
            // get aggregate result for all accounts
           ApexActiveContacthander.Activeconhandler(accountIds);
        
    }

}