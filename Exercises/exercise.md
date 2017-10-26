#### Question 1

###### The Collatz Conjecture:

The Collatz Conjecture, named after Lothar Collatz, states that, starting from any natural number, it is possible to reach 1 by following certain rules:
1. Take n:
      If n is odd, set n = 3n+1.
      Else, if n is even, set n = n/2.
2. Repeat the procedure until 1 is reached.

The conjecture is currently unproven, although it has been shown to hold for numbers up to 5476377146882523136.

Starting with the above code, make a program that takes as command-line input a single number, representing a number of Collatz steps (steps required to reach 1 by following the Collatz procedure), and computes the lowest number (starting from 1) which requires this number of Collatz steps. For example, if the number input was 949, your program should output 63,728,127; similarly, if you input 1132, it should output 9,780,657,630 as the lowest number requiring 1132 Collatz steps. Since these are fairly large numbers, and it might take your code a very long time to reach them (unless you use a more advanced technique, such as in some manner memoizing previous results and efficiently checking to see if you've already found the number of steps remaining from a given number - but I digress) you can use the following smaller test cases: For an input of 6, your code should output 10. For an input of 45, it should output 361. Finally, for an input of 260, it should print 18514.

#### Question 2

Implement a function, `increment` that takes as input a vector of integers and returns a new vector of integers that has the values of the original list each incremented by one. For example:

[1,2,3] --> [2,3,4]

#### Question 3

Implement a function, `incrementMut` that takes as input a vector of integers and modifies the values of the original list by incrementing each value by one. For example:

[1,2,3] --> [2,3,4]
