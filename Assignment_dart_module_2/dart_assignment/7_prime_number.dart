/*
Task 7: 
Write a program that accepts a number and checks if it is a prime number or not.
*/
import 'dart:io';
void main(){
    int? prime;
   
    print("enter the number you want to check is prime number or not: ");
    prime = int.parse(stdin.readLineSync()!);

    if(prime<=1){
        print("$prime is not prime number");
    }
    else{
        for(int i=2; i<=prime~/2;i++){
            if(prime%i==0){
                print("$prime is not prime number");
            }
            else{
                print("$prime is prime number");
            }
        }
    }
   }
