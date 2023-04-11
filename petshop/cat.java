package petshop;

public class cat extends animal implements  RunAble {
    public cat(String name, String colour, Integer countLegs, Integer age) {
        super(name, colour, countLegs, age);  
     
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
