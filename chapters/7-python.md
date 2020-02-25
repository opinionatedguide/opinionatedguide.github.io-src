# Chapter 7 - Let's write some python

From https://wiki.xxiivv.com/#development:
> Prototype before polishing. Get it working before optimizing it.
> Separate policy from mechanism; separate interfaces from engines.
> Write simple modular parts connected by clean interfaces.
> Design programs to be connected to other programs.
> Write programs to write programs when you can.
> Design for the future, because it will be here sooner than you think.
> In interface design, always do the least surprising thing.
> When a program has nothing surprising to say, it should say nothing.
> When a program must fail, it should fail noisily and as soon as possible.
> Write big programs only when it is clear by demonstration that nothing else will do.

Programming can seem scary at first but the more you exercise, the easier and more exciting it gets. After all, practice makes perfect! :)

## The building blocks of programming

All programming is just chaining logic, for example using treatments like "if a is b, then make c hold the value of a-3" followed by "if c is negitive then say hello"

Well, that's actually an easy program

```python
a = 1
b = 1
c = 1

if a == b:
    c = a-3

if c < 0:
    print('hello')
```

you should notice a few weird things here though, namely, on line 5 we used two equal signs to check equality. This is the case in most programming languages because a single equal sign, like is used on the first two lines, is used for assignment that is assigning the value of `a` to 1 and `b` to 1 or as on line 6 assigning the value of `( a - 3 )` to `c`, because we've already used a single equal sign for assignment, two equal signs is used for checking equality.

If you follow the logic here, `a` and `b` are both 1, so line 4 checks that to be true, so line 5 does happen. Now  c which previously was equal to 1 is now equal to a-3, where a is 1, so c becomes -2. on line 8 we check if c is less than 0, and it is so we print the word 'hello'. Here, you'll notice 'hello' is in quotes. This is because if it were not, that is if it were `print(hello)` it would try to print the value of the variable 'hello' which since hello isn't defined, wouldn't work. Let's try this in the Python interpreter. You can find install instructions for your operating system here: https://www.python.org/downloads/. If you're on Linux simply type `python` into the terminal. 

With the Python interpreter open try without quotes: 

```python
>>>print(hello)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'hello' is not defined
```
As you can see Python failed to print hello because the variable was not defined. Now lets try assigning a value to the hello variable before printing:
```python
>>> hello = "Hello World!"
>>> print(hello)
Hello World!
```
Anything you write to the interpreter can also be added to a file and ran that way. Try saving the examples above to a file called test.py, opening a terminal and running it with `python test.py`. 

[TODO]
if, while, for (and specialized), assignment, comparison, combined ops (+=), mod, exponent, floor,
in/not in, is/is not, data types, functions
libraries

## Common methods used

commenting-out
print debugging
Recursion, object orientation
while(true)
try/catch

## Some simple programs

### Hello World
As seen in the example above, the following will print `Hello World!`:
`print('Hello World!')`
Lets get some input aswell: 
```python
print('What\'s your name?')
# This prints the question. Notice the escape character \ is used to avoid stopping the string. 

print('Hello ' + input()) 
# This will pause the program and wait for user input before printing Hello <input>
```

### Even or Odd
Below is an example of a Python script which checks if the input number is odd or even.

```python
# A number is even if division by 2 give a remainder of 0.
# If remainder is 1, it is odd number.
num = int(input("Enter a number: "))
if (num % 2) == 0:
   print("{} is Even".format(num))
else:
   print("{} is Odd".format(num))
```

### Prime Numbers
Prime number is a number greater than 1 whose only factors are 1 and itself. Few instances of prime numbers include 2, 3, 5, 11. Below is an example of python function which defines whether the given input number is prime or not. 

```python
def is_prime(num):

    if num > 1:

        # Iterate from 2 to n / 2
        for i in range(2, num // 2):

            # If num is divisible by any number between
            # 2 and n / 2, it is not prime
            if (num % i) == 0:
                print("{} is not a prime number".format(num))
                break
        else:
            print("{} is a prime number".format(num))

    else:
        print("{} is not a prime number".format(num))
```

### Calculating sine and pi

### Sorting a list

### Palindromes

### Cypher

## Making a full project

### Part 1, Starting easy

[TODO] guide to write an OO python program with libraries to read and write entries to a database-like file and a real database
the database should have 3 tables, a to-do list, a time-tracker list, and a list of articles

To-do: NAME, DUEDATE
time-tracker: 2types, either manually enterend with NAME, TSTART, TSTOP or NAME, TTOTAL for the following program
articles: NAME, PUBLISHED, TPUB, TEDIT

we'll need some way to track what items in the time tracker were started, but never stopped

for now, everything should be strictly command line arguments and print statments

## More advanced topics

### Lambdas
A lambda expression is used to create a a small anonymous function. It can take any number of arguments, but can only have one expression.
Below is an example of a lambda expression which can be used to compute cube of any given number.

```python
>>> cube = lambda x : x**3
>>> cube(5)
125
```

And here is the other example of a lambda expression with three arguments.

```python
>>> sum = lambda a, b, c : a + b + c
>>> sum(1,2,-3)
0
```

threads/ parrallelization(high level only), interupts (actually, let's save this until embbeded), apis,

## A little more practice

https://www.youtube.com/watch?v=Cp5WWtMoeKg
https://www.youtube.com/watch?v=M3iI2l0ltbE


