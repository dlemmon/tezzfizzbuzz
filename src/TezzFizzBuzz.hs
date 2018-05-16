

module TezzFizzBuzz where
  import Primes
  
  type ZZString = String
  type Divisor  = Int
  
  tezzFizzBuzz list n = [fizzBuzz (map fuzzer list) x | x <- [1..n]]
  
  
  primesign :: Divisor -> String
  primesign n = if isprime n then "!" else ""
  
  -- Generalization of the fizzbuzz concept, 
  -- every number can have a fizz, a buzz o something like that
  -- 3 must b fizz and 5 must be buzz
  --------------- n -- a b ---       
  --fizz = fuzzer 3 -- 3 2 --- a = (n*8-40) % 19 
  --buzz = fuzzer 5 -- 0 4 --- b = (n-1) % 5
  
  -- This function implements the generalization of zz strings
  makeFuzz :: Divisor -> ZZString
  makeFuzz n = (fuzz allc (n*8-40)) : (fuzz voc (n-1)) : "zz"
      where fuzz str n = (str !! (mod n $ length str))
            voc  = "aeiou"
            allc = "BCDFGHJKLMNPRSTVWXY"
  
  -- Partially applied zz, expect a number to generate a zz string
  fuzzer :: Divisor -> Int -> ZZString
  fuzzer n = zz n $ makeFuzz n 
      -- This function simply test the divisibility of x / n and returns str if so
      where zz n str x = if mod x n == 0 then str else ""
  
  -- fizzBuzz applies a list of fuzzer functions to an int
  fizzBuzz :: [Int->ZZString] -> Int -> String
  fizzBuzz fizzbuzzers x  = if fb == ""
    then  show x 
    else  fb ++ primesign x
    where fb = foldr (++) "" (map ($ x) fizzbuzzers)
    

    
    
  