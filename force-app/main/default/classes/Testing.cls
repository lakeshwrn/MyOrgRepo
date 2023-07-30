public class Testing {
    public static void dmltest(){
        Try{
            Account acc = new Account (Name = 'Stellantis chennai');
        Insert acc;
        ID getaccid= acc.ID;
        System.debug(getaccid);
        Contact con = new Contact (FirstName = 'Lakesh', LastName = 'Waran', Phone = '9944513773',accountid = getaccid);
        Insert con;
            
        }catch(Dmlexception e){
            
           system.debug('error occured'+e.getMessage());
        }
        
        
        
         
    }

}