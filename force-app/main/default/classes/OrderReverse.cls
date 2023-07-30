public class OrderReverse {
	
    public static String reverseWordsInASentence(String sentence){
    	if (sentence == null) {
        	return null;
    	} else if (sentence == '') {
        	return '';
    	}
        System.debug('Sentence = '+sentence);
    	List<String> words = sentence?.split(' ');
        System.debug('SWords = '+words);
    	String reversed = '';

    	for (Integer i = words.size()-1; i >= 0; i--) {
        	if (reversed == '') {
            	reversed += words[i];
        	} else {
            	reversed += ' ' + words[i];
        	}
    	}
    	return reversed;
	}

}