package petshop;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public class petshop {
    private List<animal> animals ;
    private List<animal> result;

    public petshop() {
        animals = new ArrayList<animal>(Arrays.asList(new hamster("Эльза", "brown", 4,100), new donkey("Мотя", "серая", 2,3),
        new camel("Дора", "yellow", 0,1),
        new horse("Барсик","black", 4 ,3),
        new cat("Барсик","black", 4 ,3),
        new dog("Шарик", "red", 4,10)));
        
        
    }

        //for (Animal item : animals) {
        //    System.out.printf("%s %s \n",item.getName(), get.speak());



       public List<RunAble> getRunable(){
        List<RunAble> result = new ArrayList<>();
        for (animal runItem : animals) {
            if (runItem instanceof RunAble) {
                result.add((RunAble) runItem);
  
            }
            
        }
        return result;
       }



       public void run(){
        for (RunAble item : getRunable()) {
            System.out.printf("%s,%s\n", item.toString(),  item.run());
        }
       }
       
    }



