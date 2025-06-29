/*
Create a class hierarchy with a Vehicle superclass and Car and Bike subclasses. Implement 
methods in each subclass that print specific details, like the type of vehicle, fuel type, and 
max speed. 
*/
// Superclass
class Vehicle {
  String fuelType;
  int maxSpeed;
  Vehicle(this.fuelType, this.maxSpeed);
  void printdetails() {
    print("Fuel type: $fuelType");
    print("Max speed: ${maxSpeed}km/h");
  }
}
class Car extends Vehicle {
  int doors;
  Car(super.fuelType, super.maxSpeed, this.doors);

  @override
  void printdetails() {
    print("Vehicle Type: Car");
    print("Fuel type: $fuelType");
    print("Max speed: ${maxSpeed}km/h");
    print("Number of doors: $doors");
  }
}
class Bike extends Vehicle {
  bool hasCarrier;
  Bike(super.fuelType, super.maxSpeed, this.hasCarrier);
  @override
  void printdetails() {
    print("Vehicle Type: Bike");
    print("Fuel type: $fuelType");
    print("Max speed: ${maxSpeed}km/h");
    print("Has carrier: ${hasCarrier ? "Yes" : "No"}");
  }
}
void main() {
  Car myCar = Car("Petrol", 180, 4);
  myCar.printdetails();
  print("\n");

  Bike myBike = Bike("Electric", 80, true);
  myBike.printdetails();
}

