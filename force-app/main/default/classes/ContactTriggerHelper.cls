public class ContactTriggerHelper {
    Public static void accountRatingFieldUpdate(List<Contact> conList){

		List<Account> accnewlist= new List<Account>();
		for(Contact con :conList) {
			if(con.AccountId != null){
				Account accrec = new Account();
                accrec.id=con.AccountId;
                accrec.rating = 'Cold';
                accnewlist.add(accrec);
			}
            
            
		}
      update accnewlist;
    }
}