

module Main where
  
  import Primes 
  import TezzFizzBuzz
  
  main :: IO ()
  main = do 
    putStrLn  (fizzBuzz (map fuzzer [2,3,5]) 30)
    putStrLn "============"
    printList $ tezzFizzBuzz (primes last) last 
      where last = 2*3*5*7
 
  printList list = mapM_ (putStrLn) $ list
  
  stdFizzBuzz = tezzFizzBuzz [3,5] 100
  
  
  