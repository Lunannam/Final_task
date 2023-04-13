package petshop;

public class horse extends animal implements pack{
    public horse(String species, String name,  Integer age) {
        super(species, name,  age);  
     
    }
    
    @Override
    public String packed() {
        return "вьючное" ;
 }

    }

