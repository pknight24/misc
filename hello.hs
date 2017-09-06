import Data.List
import System.IO


doubleMe x = x + x
l = [x | x <- [1..10]]
name = "Parker"
ll = [2, 4 .. 10]
checkRight :: Int -> Int -> Int -> Bool
checkRight a b c = (a^2 + b^2 == c^2)

factorial 0 = 1
factorial x = x *  factorial (x-1)

firstLet (x:xs) = "The first letter of " ++ (x:xs) ++ " is " ++ [x]

getFat :: Int -> String
getFat w
   | x < 10 = "Got damn bre"
   | x < 20 = "Not bad"
   | x < 30 = "Solidd"
   | otherwise = "U thic"
   where x = 2 * w
getThirds x = [xs | xs <- [1..x]]



fib 0 = 0
fib 1 = 1
fib x = fib(x-1) + fib(x-2)

maxm [x] = x
maxm(x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maxm xs


triArea r = pi * (r^2)

getFiv 0 = []
getFiv n = 5 : getFiv(n-1)
