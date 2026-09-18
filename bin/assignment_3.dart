class Book{
  String title;
  String author;
  double price;
  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent){
    return (price - (price *(discountPercent / 100)));
  }
  void display(double discountPercent){
    print("Title of the book : $title");
    print("Author name of the book : $author");
    print("Regular price of the book : ${price.toStringAsFixed(2)} ");
    print("Discount : $discountPercent%");
    print("After Discount Price : ${discountedPrice(discountPercent).toStringAsFixed(2)} ");
    print("");
  }
}
class Employee{
  String name;
  double salary;
  Employee(this.name, this.salary);
}
class Manager extends Employee{
  String department;
  Manager(super.name, super.salary, this.department);
  display(){
    print("Name of the Manager : $name");
    print("Salary of the Manager : $salary");
    print("Manager of the department :$department");
    print("");
  }

}
class Developer extends Employee{
  String programmingLanguage;
  Developer(super.name, super.salary, this.programmingLanguage);
  display(){
    print("Name of the Developer : $name");
    print("Salary of the Developer : $salary");
    print("Using Programming Language : $programmingLanguage");
    print("");
  }
}

abstract class Appliance{
  turnOn();
  turnOff();
}
class Fan extends Appliance{
  @override
  turnOn() {
    print("Fan is now running");
  }
  @override
  turnOff() {
    print("Fan is not running");
  }

}
class Light extends Appliance{
  @override
  turnOn() {
    print("Light is switched on");
  }
  @override
  turnOff() {
    print("Light is switched off");
  }
}

main(){
  Book Book1 = Book("The Alchemist", "Paulo Coelho ", 500);
  Book Book2 = Book("Atomic Habits", "James Clear ", 700);
  double b1 = 10.00;
  Book1.display(b1);
  b1 = 15.00;
  Book2.display(b1);
  Manager manager1 = Manager("Sabit", 250000, "IT");
  Developer developer1 = Developer("Sadat", 240000, "Dart");
  manager1.display();
  developer1.display();

  Fan Fan1 = Fan();
  Light Light1 = Light();
  Fan1.turnOn();
  Fan1.turnOff();
  Light1.turnOn();
  Light1.turnOff();
}
