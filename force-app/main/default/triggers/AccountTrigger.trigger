trigger AccountTrigger on Account (After update) {
   
    AccountHandler handler = new AccountHandler();
    
    if(trigger.isAfter && trigger.isUpdate){
        for(Account Acc:trigger.newMap.values()){
			if(trigger.Oldmap.get(Acc.Id).description!=Trigger.newMap.get(Acc.Id).description || acc.Description == null){
                        handler.updateCase(trigger.new); 
            }
        }
    
    }
        
}