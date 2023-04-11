package petshop;

public class donkey extends animal implements RunAble {
    public donkey(String name, String colour, Integer countLegs, Integer age) {
        super(name, colour, countLegs, age);  
     
    }
   // @Override
   // public String speak() {
   //     
   //     return "Meow";
   // }
   

   @Override
    public String run() {
  // TODO Auto-generated method stub
   return "50 км ч";
    }
   
}
