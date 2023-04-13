package petshop;

public class camel extends animal implements pack {
    public camel(String species, String name, Integer age) {
        super(species, name,  age);  
     
    }

@Override
public String packed() {
    return "вьючное" ;
}

}
