
module Primes where
  isqrt :: Integral a => a -> a   
  isqrt = floor . sqrt . fromIntegral
  
  primes :: Integral a => a -> [a]  
  primes 1 = []
  primes n = 2:[i | i <- [3,5..n], and [mod i k /= 0 | k <- primes (isqrt i)]]
   
  isprime n = last (primes n) == n