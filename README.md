![Haskell logo](https://haskell-lang.org/static/img/logo.png?etag=rJR84DMh)

# TezzFizzBuzz

## TezzFizzBuzz FAQ

### What does TezzFizzBuzz mean ?

TezzFizzBuzz is (just) a hypergeneralization of [FizzBuzz](https://github.com/zenware/FizzBuzz). 

### And what is Tezz !?

Fizz is for 3, Buzz is for 5... and Tezz is for 2!

### Is there a Tezz/Fizz/Buzz for every number ?

Yes, there is a zz string for every number. You can generate them using `makeFuzz`

    > "I hope you like " ++ (makeFuzz 1)
    "I hope you like Jazz"
    > "If it is so, send me a " ++ (makeFuzz 13)
    "If it is so, send me a Kizz"
    > "Want to have a " ++ (makeFuzz 23) ++ " ?"
    "Want to have a Pizz ?"

### And then what does a TezzFizzBuzz looks like?

This implementation uses also a prime number generator, so it generates the zz 
string for all of the primes (except one), and calculates the resulting string for 
the rest of numbers. 

It fills every number, as all of them are just products of prime numbers or 
simply primes. The primes are marked with a **!** sign

A simple run looks like this:

    > main
    TezzFizzBuzz
    ============
    1
    Tezz!
    Fizz!
    Tezz
    Buzz!
    TezzFizz
    Wezz!
    Tezz
    Fizz
    TezzBuzz
    Nazz!
    TezzFizz
    Kizz!
    TezzWezz
    FizzBuzz
    Tezz
    Cezz!
    TezzFizz
    Xozz!
    TezzBuzz
    FizzWezz
    TezzNazz
    Pizz!
    TezzFizz
    Buzz
    TezzKizz
    Fizz
    TezzWezz
    Dozz!
    TezzFizzBuzz

## Running it

1. start **ghci** in the project folder, it will load the sources. 
2. execute main 

You will get a list of 200 numbers filled with the zz strings of the primes that
are less than 200.

### Running other functions

    Print a standard fizzBuzz

    > printList stdFizzBuzz  

    Print a tezzFizzBuzz with primes till the number 30

    > printList $ tezzFizzBuzz (primes 11) 30

    Use an arbitrary list of numbers 

    > printList $ tezzFizzBuzz [2,4,8,16] 32
    


