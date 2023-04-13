package petshop;

public class donkey extends animal implements pack {
    public donkey(String species, String name, Integer age) {
        super(species, name, age);  
     
    }

@Override
public String packed() {
   
    return "вьючное" ;
}

   
}
