import Structures
import Perm

newtype TTT a = TTT a deriving (Show)
xt = TTT 3

bigTree :: Tree Int
bigTree = treeFromList [1..1000]

fib :: Int -> Int
fib n
  | n <=1     = n
  | otherwise = (fib $ n - 1) + (fib $ n - 2)

fact :: Int -> Int
fact 0 = 1
fact x = x * (fact $ x - 1)

assert :: Bool -> Either String String
assert True = Right "Pass"
assert False = Left "Test does not pass"

main = do
  putStrLn "What is your name?"
  name <- getContents
  putStrLn ("Hello " ++ name)
  
