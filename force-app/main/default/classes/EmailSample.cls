public class EmailSample {
    public static void emailSend(){
        	List<Messaging.SingleEmailMessage> mailList = new List<Messaging.SingleEmailMessage>();
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            List<String> receiverEmailAdd = new List<String>();
            receiverEmailAdd.add('lakeshwaran.v@external.stellantis.com');
            receiverEmailAdd.add('lakeshwaran.vijayakumar@alten-india.com');
            mail.setToAddresses(receiverEmailAdd);
            List<String> ccEmailAdd = new List<String>();
            ccEmailAdd.add('lakeshwaran.v@gmail.com');
            mail.setCcAddresses(ccEmailAdd);
            String senderEmailAdd = 'lakeshwaran.v@gmail.com';
            mail.setReplyTo(senderEmailAdd);
            String body = 'Hi dear, I have sent the email successfully through sf';
            mail.setHtmlBody(body);
            mailList.add(mail);
            Messaging.sendEmail(mailList);
            System.debug('Mail sent successfully');
        
    }

}