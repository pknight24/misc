remove :: (Eq a) => a -> [a] -> [a]
remove _ [] = []
remove a (x:xs)
  | a == x   = xs
  |otherwise = x:(remove a xs)

selection :: (Ord a) => [a] -> [a]
selection [] = []
selection xs = [smallest] ++ (selection $ remove smallest xs)
  where smallest = minimum xs
