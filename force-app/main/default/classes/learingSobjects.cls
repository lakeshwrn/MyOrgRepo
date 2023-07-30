public class learingSobjects {

    public static void sobjects(){
       Account V = new Account(name = 'lakesh');
       System.debug(V);
    }
    
    public static void lists(){
        List<String> Name = new List<String>{'LAKESH','DILIP','DILIP'};
            Name.add('Lakesh');
            System.debug('The values of the list is'+Name+Name.size()+Name.get(3));
            Name.remove(0);
            System.debug(Name);
            List<String> same = Name.clone();
            System.debug(same);
            Same.set(0,'Revi');
            System.debug(same);
            same.sort();
            System.debug(same);
            Same.clear();
            System.debug(same);
    }
    
    public static void setsprac(){
        Set<String> kunda = new Set<String> {'RICE','Maggi','Wheat'};
            System.debug(Kunda);
            Kunda.add('Rice');
            System.debug(Kunda);
            Kunda.add('RICE');
            System.debug(Kunda);
            Kunda.remove('Rice');
            System.debug(Kunda);
    }
}