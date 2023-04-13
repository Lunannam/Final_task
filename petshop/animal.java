package petshop;

public abstract class animal {

protected String species;
/**
 * @param species the species to set
 */
public void setSpecies(String species) {
    this.species = species;
}

/**
    *  @param species
     * @param name
     *  @param age
     
     
    
     */
    public animal(String species, String name,  Integer age) {
        this.species = species;
        this.name = name;
        this.age = age;
    }
    // Реализовать абстрактный класс Animal и его наследники Cat, Dog, и прочее. 
// Родитель имеет в себе общие данные (пример: кличка, 
// количествор лап, какие звуки издают и тд), а наследники собственные 
// параметры (тип перемещения).
   
    protected String name;
    protected String age;
    /**
 * @return the species
 */
public String getSpecies() {
    return name;
}

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }
    
    /**
     * @return the age
     */
    public Integer getAge() {
        return age;
    }

    /**
     * @param age the age to set
     */
    public void setAge(Integer age) {
        this.age = age;
    }


   
    @Override
    public String toString() {
        return String.format(" %s %s  %d", species, name, age);
    }

    public void inputFromConsole() {
    }

    public void saveToJson() {
    }
}