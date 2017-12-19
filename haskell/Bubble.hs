bubbleSort ([], a) = ([], a)
bubbleSort ([x], a) = ([x], a)
bubbleSort ((x:xs), a)
  | x <= (head xs) = (x:(fst f), snd f)
  | otherwise      = ((head xs):(fst l), snd l)
  where l = bubbleSort ((x:(tail xs)), (a + 1))
        f = bubbleSort (xs, a)

bs :: (Ord a) => [a] -> [a]
bs [] = []
bs xs
  | count == 0 = list
  | otherwise  = bs list
  where
    list = fst (bubbleSort (xs, 0))
    count = snd (bubbleSort (xs, 0))
