public class AccountHandler {
    
    public void updateCase(List<Account> newTrg){        
        Set<Id> idSet = new Set<Id>();
        if(!newTrg.isEmpty()){
            for(Account a:newTrg){
                if(a.description=='Test'){
                    idSet.add(a.id);
                }
			}
		}
        List<Case> caseList = [Select id,status,Priority from Case where accountId in: idSet];
        for(Case c:caseList){
            if(c.status == 'New'){
                c.Priority='High';	
            }
		}
       Update caseList
   
    }

}