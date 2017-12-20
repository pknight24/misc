threeFive :: (Integral a) => a -> a
threeFive n = sum [x | x <- [0..(n - 1)], x `mod` 3 == 0 || x `mod` 5 == 0]

getVowels :: String -> String
getVowels "" = ""
getVowels s = [n | n <- s, elem n vowels]
  where vowels = "aeiouAEIOU"

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

sigma :: (Int -> Int) -> [Int] -> Int
sigma _ [] = 0
sigma f xs = sum $ map f xs

fact :: Int -> Int
fact 0 = 1
fact n = n * (fact (n - 1))
