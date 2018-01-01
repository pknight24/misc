fact :: Int -> Int
fact n = foldr1 (*) [1..n]

fax :: Int -> Int
fax n
  | n == 0    = 1
  | otherwise = (sum $ take n $ repeat 1) * (fax $ n - 1)
