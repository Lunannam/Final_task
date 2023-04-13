package petshop;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public class petshop {
    private List<animal> animals ;
    private List<animal> result;

    public petshop() {
        animals = new ArrayList<animal>(Arrays.asList(new hamster("хомяк", "Эльза", 3), new donkey("осел", "Мотя", 3),
        new camel("верблюд", "Дора", 1),
        new horse("конь" , "Бархат", 4 ),
        new cat("кот" , "Барсик", 15),
        new dog("пес", "Шарик", 10)));
        
        
    }

        //for (Animal item : animals) {
        //    System.out.printf("%s %s \n",item.getName(), get.speak());



       public List<pack> getPack(){
        List<pack> result = new ArrayList<>();
        for (animal packItem : animals) {
            if (packItem instanceof pack) {
                result.add((pack) packItem);
  
            }
            
        }
        return result;
       }


       public List<domestic> getDom(){
        List<domestic> result = new ArrayList<>();
        for (animal domesticItem : animals) {
            if (domesticItem instanceof domestic) {
                result.add((domestic) domesticItem);
            }
            
        }
        return result;
       }
       public void packed(){
        for (pack item : getPack()) {
            System.out.printf("%s,\n", item.toString(),  item.packed());
        }

       
    }

    public void dom() {
        for (domestic item : getDom()) {
            System.out.printf(" %s,\n", item.toString(),  item.dom());
        }
    }



}
