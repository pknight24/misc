double :: (Num a) => a -> a
double x = x * 2

fact :: (Integral a) => a -> a
fact 0 = 1
fact x = x * (fact (x - 1))


area :: (Floating a) => a -> a
area r = pi * (r * r) where pi = 3.14

bubbleSort :: (Ord a) => [a] -> [a]
bubbleSort [] = []
bubbleSort [x] = [x]
bubbleSort (x:xs) 
   | x <= (head xs) = (x:(bubbleSort xs))
   | otherwise      = bubbleSort ((head xs):x:(tail xs))

threeFive :: (Integral a) => a -> a
threeFive n = (sum [x | x <- [0..(n - 1)], x `mod` 3 == 0 || x `mod` 5 == 0])
