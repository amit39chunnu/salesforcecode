public class checkrepeatedword {
    List<String> words=new List<String>();
    public void call(){
    	words.add('my');
    	words.add('name');
    	words.add('is');
    	words.add('Amit');
    	words.add('name');
        for(Integer i=0;i<=words.size()-1;i++){
            for(Integer j=i+1;j<=words.size()-1;j++){
                if(words[i]==words[j]){
                    system.debug('Repeated string='+words[i]);
                }
            }
        }
    }
}