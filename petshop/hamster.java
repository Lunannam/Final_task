package petshop;

public class hamster extends animal implements domestic{
    public hamster(String species, String name,Integer age) {
        super(species, name,  age);  
     
    }
   
   
    @Override
    public String dom() {
        return "домашнее" ;
    } 
}
