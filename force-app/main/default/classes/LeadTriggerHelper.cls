public class LeadTriggerHelper {
    public static void LeadTriggerOnAccount(List<Lead> oldList,List<Lead> newList){
        List<account> accnewlist= new List<account>();
        for(Lead lo:oldList){
            for(Lead ln:newList){
                If(lo.Id == ln.id && lo.Status!=ln.Status && ln.Status == 'Closed - Not Converted' ){
                    Account acc = new Account();
                    acc.Lead__c = ln.id;
                    acc.rating = 'Hot';
                    accnewlist.add(acc);
                    system.debug('accnewlist is Lakeshwaran'+accnewlist);

                }
            }
            
        }
        system.debug('accnewlist is'+accnewlist);
      Update accnewlist;
        system.debug('accnewlist is'+accnewlist);
    }
    
    public static void sendEmailMethod(List<Lead> trgNewList){
        List<Messaging.SingleEmailMessage> mailList = new List<Messaging.SingleEmailMessage>();
        for(Lead l : trgNewList){
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            
            //receiver email list
            List<String> receiverEmailList = new List<String>();
            receiverEmailList.add(l.email);
            receiverEmailList.add('lakeshwaran.vijayakumar@alten-india.com');
            receiverEmailList.add('hasinisoundharajan143@gmail.com');
            mail.setToAddresses(receiverEmailList);
            
            //sender email
            mail.setReplyTo('lakeshwaran.v@gmail.com');
            
            //cc email
            List<String> ccEmailList = new List<String>();
            ccEmailList.add('lakeshwaran.v@external.stellantis.com');
            mail.setCcAddresses(ccEmailList);
            
            //email body
            String body = 'Hi '+l.FirstName+' / '+ l.email+', we have created a new Lead in our salesforce Application for You.';
            mail.setPlainTextBody(body);
            
            //subject of the email
            String sub = 'Lead creation acknowledgement Mail';
            mail.setSubject(sub);
            
            mailList.add(mail);     
        }
        if(!mailList.isEmpty()){
            Messaging.sendEmail(mailList);
        }
        
        
    }
    

}