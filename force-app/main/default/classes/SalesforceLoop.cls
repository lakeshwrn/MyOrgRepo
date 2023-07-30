public class SalesforceLoop {

    public static void traditionalMethod(){
        for(Integer i=0;i<=10;i++){
            system.debug('The value of i='+i);
        }
        
    }
    
    public static void listOrSet(){
        list<String> namelist = new list<String>();
        namelist.add('Lakesh');
        namelist.add('Dilip');
        namelist.add('sudha');
         
        system.debug(namelist);
     
        for(String name: namelist){
           system.debug('Name are'+name);
        }
    }      
    public static void soqlForLoop(){
        List <account> name = [select id,name from account];
        system.debug(name);
        
        Long StartTime = system.now().getTime();
        for(Account idName :name){
          system.debug('id is '+idName.id+'Name is'+idName.name);  
        }
        Long EndTime = system.now().getTime();
        Long timeTaken = EndTime - StartTime;
        System.debug(timeTaken);
        
        Integer size = name.size();
        System.debug('Size is'+size);
        
        for(integer i=0;i<=size;i++){
            Account acc = name.get(i);
          system.debug('id is '+acc.id+'Name is'+acc.name);  
        }
        
       
    }    
}