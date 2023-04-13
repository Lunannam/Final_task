package petshop;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class newAnimalCreator extends animal {
    public newAnimalCreator(String species, String name, Integer age) {
        super(species, name, age);  
     
    }
    public void saveToJson() {
        String fileName = "report.json";
        try (FileWriter writer = new FileWriter(fileName, false)) {
            writer.write("{\n");
            writer.write("\"species\":\""+ species + "\",\n");
            writer.write("\"name\":\""+ name +"\",\n");
            writer.write("\"age\":"+age+",\n");
            writer.write("}\n");
            writer.flush();
        } catch (IOException ex) {
            System.out.println(ex.getMessage());
        }
    }

    public void inputFromConsole(){
        species = prompt("species: ");
        name = prompt("name: ");
        age = prompt("age: ");
        
    }

    private Integer prompt(String message) {
        Scanner in = new Scanner(System.in);
        System.out.print(message);
        return in.nextLine();
    }
}
