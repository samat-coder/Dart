/*task 4:
Create a program that calculates the area and circumference of a circle. Use constants to 
store the value of pi.
*/
import 'dart:io';
const pi=3.14;

double cal_area(double radius){
    return pi*radius*radius;

}
double cal_circumference(double radius){
    return 2*pi*radius;
}
void main(){

    print("enter the circle radius: ");
    double? radius=double.parse(stdin.readLineSync()!);

    if(radius>0){
        double area=cal_area(radius);
        double circumference=cal_circumference(radius);

        print("area of circle: $area");
        print("circumference of circle: $circumference");
    }
    else{
        print("invalid! enter the positive number");
    }

}