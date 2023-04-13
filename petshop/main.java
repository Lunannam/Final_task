package petshop;


public class main {
    // public static void main(String[] args) {
    //     petshop petshop = new petshop();
    //     System.out.println("домашние");
    //     petshop.dom();  
    //     System.out.println("вьючные");
    //     petshop.packed();
    // }
// 
   
        public static void main(String[] args) {
            System.out.println("Введите вид животного:");
            animal animal = new newAnimalCreator ("", "", 0);
            animal.inputFromConsole();
            animal.saveToJson();
        
 }
}
