--gets all the permutations of a list
--perm gets permutations, getPerms is used for formatting output

module Perm where

perm :: [a] -> [[a]]
perm [] = [[]]
perm [a] = [[a]]
perm (w:word) = loopy 0 insert (map (w:) (perm word))
  where insert :: Int -> [a] -> [[a]]
        insert n (x:xs)
          | n == length (x:xs) = [[]]
          | otherwise          = [take n xs ++ [x] ++ drop n xs] ++ (insert (n + 1) (x:xs))
        loopy :: Int -> (Int -> [a] -> [[a]]) -> [[a]] -> [[a]]
        loopy n f l
          | n == length l = [[]]
          | otherwise     = f 0 (l !! n) ++ loopy (n + 1) f l
getPerms :: [a] -> [[a]]
getPerms word = [p | p <- (perm word), length p == length word]
