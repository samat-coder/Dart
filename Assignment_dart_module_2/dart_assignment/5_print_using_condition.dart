/*Write a program that prints all numbers from 1 to 100. For multiples of 3, print "Fizz" 
instead of the number, and for multiples of 5, print "Buzz." For numbers that are multiples 
of both 3 and 5, print "FizzBuzz."*/

void main(){
    for(int i=1; i<=100; i++){
        if(i%3==0){
            print("fizz");
        }
        else if(i%5==0){
            print("buzz");
        }
        else if(i%3==0 && i%5==0)
        {
            print("fizzbuzz");
        }
        else{
            print(i);
        }
    }
}