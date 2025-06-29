/*
task 2:
Create a program that converts temperature from Celsius to Fahrenheit and vice versa. 
Implement functions to handle both conversions and let the user choose the conversion 
type.
*/
import'dart:io';
double celciustofahrenhait(double celcius){
    return (celcius*9/5)+32;
}
double fahrenheittocelcius(double fahrenheit){
    return (fahrenheit-32)*5/9;
}
void main(){

    print("choose the conversation type");
    print("1.celcius to fahrenheit");
    print("2.fahrenheit to celcius");

    String? choice = stdin.readLineSync()!;

    if (choice=='1'){
        print("enter the temprature in celcius: ");
        double? celcius = double.parse(stdin.readLineSync()!);

          double fahrenheit = celciustofahrenhait(celcius);
          print("${fahrenheit}f");
          }
    else if (choice=='2'){
        print("enter the temprature in fahrenheit: ");
        double? fahrenheit = double.parse(stdin.readLineSync()!);

          double celcius=fahrenheittocelcius(fahrenheit);
          print("${celcius}c");
          }
   

}