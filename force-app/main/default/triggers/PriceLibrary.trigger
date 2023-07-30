trigger PriceLibrary on Library__c (before insert) {
    
         PriceLibraryHelper.ApplyDiscount(Trigger.new);

}