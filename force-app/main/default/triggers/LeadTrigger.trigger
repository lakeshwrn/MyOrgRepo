trigger LeadTrigger on Lead (after insert,after update) {
    if(trigger.isUpdate){
        LeadTriggerHelper.LeadTriggerOnAccount(trigger.old,trigger.new);
     } else if(trigger.isInsert){
          LeadTriggerHelper.sendEmailMethod(trigger.new);      
     }
    

}