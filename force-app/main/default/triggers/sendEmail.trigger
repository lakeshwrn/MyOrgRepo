trigger sendEmail on Opportunity (after update) {
    if(trigger.isafter && trigger.isupdate){
            for(Opportunity opp:trigger.new){
                if(opp.StageName =='Closed Won'){
                    system.debug('EMAIL is sent'+opp.StageName);
            
             }
                
        
         }
        
    }

}