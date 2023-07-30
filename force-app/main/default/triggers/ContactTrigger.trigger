trigger ContactTrigger on Contact (after insert){
    
    ContactTriggerHelper.AccountRatingFieldUpdate(trigger.new);
    
}