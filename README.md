## Goldbach Conjecture Program

### Overview

This program demonstrates the application of **Goldbach's Conjecture** using Fortran. The conjecture states that every even number greater than 2 can be expressed as the sum of two prime numbers. The program finds and prints pairs of prime numbers that satisfy this conjecture for numbers up to 10000.

### Features

1. **Prime Checking Function**: 
   The program includes a function `check_p(val)` that checks whether a given number is prime by iterating through possible factors.

2. **Next Prime Generator**: 
   The `NextPrime(val)` function calculates the next prime number greater than the provided value.

3. **Goldbach Conjecture Function**:
   The core of the program is the `addPrime()` function, which prints the first prime in the prime pairs that satisfy Goldbach's conjecture. It iterates through prime numbers, computing and checking whether the pair sums to another prime.

### How to Compile and Run

1. Save the program code in a file named `goldbach.f90`.

2. Compile the code using a Fortran compiler like `gfortran`:
```bash
   gfortran -o goldbach goldbach.f90
```
3. Run the compiled program:
```bash
./goldbach
```

### Key Functions 

1. check_p(val): A function that takes an integer input val and returns .True. if val is prime, .False. otherwise.

2. NextPrime(val): A function that computes the next prime number greater than val.

3. addPrime(): A function that implements Goldbach's conjecture by generating pairs of primes and printing them.


### Notes 
The program uses a dynamically allocated array to store intermediate results but ensures proper deallocation of memory to avoid memory leaks.
It only prints the first prime number from each Goldbach pair.
The logic of the program allows for further exploration of prime number generation and the verification of Goldbach's conjecture
