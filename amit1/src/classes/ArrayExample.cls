public class ArrayExample {
    public Integer[] a=new Integer[]{};
        public integer[] temp=new Integer[5];
    public void call(){
        a.add(1);
        a.add(2);
        a.add(3);
        a.add(2);
        for(Integer i=0;i<=a.size()-1;i++){
            System.debug(a[i]);
        }
        for(Integer i=0;i<=a.size()-1;i++){
            system.debug(i);
            for(integer j=i+1;j<=a.size()-1;j++){
                system.debug(j);
                if(a[i]!=a[j]){
                    temp[i]=a[i];
                }
            }
        }
        system.debug('this is aaray'+temp);        
    }

}