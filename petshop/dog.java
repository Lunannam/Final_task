package petshop;

public class dog extends animal implements RunAble {
    public dog(String name, String colour, Integer countLegs, Integer age) {
        super(name, colour, countLegs, age);
     
    }
    // @Override
    // public String speak() {
    //           return "woof";
     
     @Override
     public String run() {
       // TODO Auto-generated method stub
        return "50 км ч";
    }
        
    
}
