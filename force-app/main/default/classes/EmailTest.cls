public class EmailTest {
    public static void emailTest(){
        
        //Create a master list to hold the emails we'll send
        List<Messaging.SingleEmailMessage> mailList = new List<Messaging.SingleEmailMessage>();
        
        //Create a new Email
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        
        //list of people who should get the email
        List<String> receiverAdd = new List<String>();
        receiverAdd.add('lakeshwaran.v@external.stellantis.com');
        mail.setToAddresses(receiverAdd);
  
        // list of people who should be CC'ed
        List<String> ccAdd = new List<String>();
        ccAdd.add('lakeshwaran.v@gmail.com');
        mail.setCcAddresses(ccAdd);
        
        //Set who the email is sent from
        String senderAdd = 'lakeshwaran.v@gmail.com';
        mail.setReplyTo(senderAdd);
            
        //set the subject of the email    
        String sub = 'Email creation alert';
        mail.setSubject(sub);
        
        String body = 'Hi lakesh, First email Test';
        mail.setHtmlBody(body);
        
        //Add your email to the master list
        mailList.add(mail);
        
        //Send all emails in the master list
        Messaging.sendEmail(mailList);
        

        
    }

}