/*
Write a program to take a number from the user and determine if it’s even or odd. 
*/
import 'dart:io';
void main(){
    int? user;

    print("enter the value: ");
    user=int.parse(stdin.readLineSync()!);

    if(user%2==0){
        print("even: $user");
    }
    else{
        print("odd: $user");
    }
}