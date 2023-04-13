package petshop;

public class cat extends animal implements  domestic {
    public cat(String species, String name, Integer age) {
        super(species, name, age);  
     
    }

    @Override
    public String dom() {
        return "домашние";
    }
   
}
