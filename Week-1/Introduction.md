
## Perl 6 as calculator
#### Addition



```perl6
5+3
```




    8



#### Subtraction


```perl6
8-3
```




    5



#### Multiplication


```perl6
5*3
```




    15



#### Division


```perl6
1/3
```




    0.333333




```perl6
2/7
```




    0.285714



#### Power 


```perl6
2**3
```




    8




```perl6
4**3
```




    64



#### Parenthesis (They deal with order of operations.)


```perl6
2 + (2*3)**2
```




    38



#### Comment

They start with the # symbol.

## Variables

An assignment statement uses the equal = sign and gives a value to a variable, but, before you can assign a value to a variable, you first need to create the variable by declaring it if does not already exist


```perl6
my $message; # variable declaration, no value yet
$message = 'Pokhara is good';
```




    Pokhara is good




```perl6
 my $number = 42; # variable declaration and assignment
```




    42




```perl6
 $number = 66; # new assignment
```




    66



In Perl, variable names start with a so-called sigil, i.e. a special non-alphanumeric character such as $, @, %, & and some others.

For example, the $ character indicates that the
variables above all are scalar variables, which means that they can contain only one value at any given time.

Variable can contain both letters and numbers, but user-defined variable names **can’t begin with a number**. Variable names are case-sensitive. It is legal to use uppercase
letters, but it is conventional to use only lower case for most variables names. Some people
nonetheless like to use \$TitleCase for their variables or even pure \$UPPERCASE for some special variables.
You can use all kinds of Unicode letters, i.e. letters from almost any language in the world.

**@** is for arrays, **%** for hashes (associative arrays/maps),
and **&** for code objects.


Subroutines and variables declared with *my* are lexically scoped. They are
visible from the point of the declaration to the end of the current { }-enclosed
block (or the current file, in case the declaration is outside a block). Subroutine
parameters are visible in the signature and block of the subroutine.
