import 'dart:io';
void main(){
    String? name;
    int? age;

    print("enter your name: ");
    name=stdin.readLineSync()!;
    print("enter your age: ");
    age=int.parse(stdin.readLineSync()!);

    print("welcome $name");
    int remainAge=100-age;
    print("$remainAge years they have left until they turn 100.");
    


}