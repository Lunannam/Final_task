package petshop;

public class hamster extends animal implements RunAble{
    public hamster(String name, String colour, Integer countLegs, Integer age) {
        super(name,  colour, countLegs, age);  
     
    }
   // @Override
   // public String speak() {
   //     
   //     return "Meow";
   // }
    @Override
    public String run() {
        
        return "30 км ч";
    } 
}
