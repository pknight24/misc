module Structures
( Stack(..)
, Queue(..)
, push
, pop
, add
, remove
, Tree(..)
, singleboy
, treeInsert
, treeElem
, treeInsert
, treeToList
, treeFromList
, treeDepth
, treeMap
) where


data Stack a = Stack [a] deriving (Show, Eq)
data Queue a = Queue [a] deriving (Show, Eq)

push :: (Stack a) -> a -> (Stack a)
push (Stack a) n = (Stack (n:a))

pop :: (Stack a) -> (Stack a)
pop (Stack (x:xs)) = (Stack xs)

add :: (Queue a) -> a -> (Queue a)
add (Queue a) n = Queue (a ++ [n])

remove :: (Queue a) -> (Queue a)
remove (Queue (x:xs)) = (Queue xs)

--recrusively defines a tree
data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Eq)

--tree with a node and two empty branches
singleboy :: a -> Tree a
singleboy x = (Node x EmptyTree EmptyTree)

--inserts an item in a tree
treeInsert :: (Ord a) => a -> (Tree a) -> (Tree a)
treeInsert x EmptyTree = singleboy x
treeInsert x (Node a left right)
  | x == a = (Node x left right)
  | x > a  = (Node a left (treeInsert x right))
  | x < a  = (Node a (treeInsert x left) right)



--checks if an item is in a tree
treeElem :: (Ord a) => a -> (Tree a) -> Bool
treeElem _ EmptyTree = False
treeElem n (Node a left right)
  | n == a = True
  | n < a  = treeElem n left
  | n > a  = treeElem n right


--gets the greatest possible depth of a tree
treeDepth :: Tree a -> Int
treeDepth EmptyTree = 0
treeDepth (Node x left right)
  | leftDepth > rightDepth = leftDepth
  | leftDepth < rightDepth = rightDepth
  | otherwise = leftDepth
  where
    leftDepth = 1 + (treeDepth left)
    rightDepth = 1 + (treeDepth right)

--creates a tree from a list
treeFromList :: (Ord a) => [a] -> Tree a
treeFromList [] = EmptyTree
treeFromList (x:xs) = treeInsert x (treeFromList xs)

--creates a list from a tree
treeToList :: Tree a -> [a]
treeToList EmptyTree = []
treeToList (Node n left right) = (treeToList left) ++ (treeToList right) ++ [n]

--maps a function to every node on a tree
treeMap :: (a -> a) -> Tree a -> Tree a
treeMap _ EmptyTree = EmptyTree
treeMap f (Node n left right) = (Node (f n) (treeMap f left) (treeMap f right))
