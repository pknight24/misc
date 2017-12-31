import Structures
import Perm

bigTree :: Tree Int
bigTree = treeFromList [1..1000]

fib :: Int -> Int
fib n
  | n <=1     = n
  | otherwise = (fib $ n - 1) + (fib $ n - 2)

fact :: Int -> Int
fact 0 = 1
fact x = x * (fact $ x - 1)

main = do
  putStrLn "What is your name?"
  name <- getContents
  putStrLn ("Hello " ++ name)
  
