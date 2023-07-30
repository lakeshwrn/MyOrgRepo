public class PriceLibraryHelper {
    public static void ApplyDiscount(List<Library__c> Lib){
        for(Library__c L : Lib){
            L.Price__c*=0.9;     //   L.Price__c = L.Price__c*0.9;  10percent discount Formula
        }
        
    }
    

}