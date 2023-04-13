package petshop;

public class dog extends animal implements domestic {
    public dog(String species, String name,Integer age) {
        super(species, name, age);
     
    }

    @Override
    public String dom() {
        return "домашнее" ;
    }
        
    
}
