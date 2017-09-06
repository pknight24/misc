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
   | w < 10 = "Got damn bre"
   | w < 20 = "Not bad"
   | w < 30 = "Solidd"
   | otherwise = "U thic"

getThirds x = [xs | xs <- [1..x]]


power x n = (x^n)
