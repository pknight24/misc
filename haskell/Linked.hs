module Linked where
import Data.Monoid

--defintion and functions for a LinkedList data structure which contains a head and a 'pointer' to the rest of the list
data LinkedList a = Null | Node a (LinkedList a) deriving (Show, Eq)

--creates a LinkedList from a standard list (very important)
linkedFromList :: [a] -> LinkedList a
linkedFromList [] = Null
linkedFromList (x:xs) = Node x (linkedFromList xs)

--formats display of LinkedLists in a way that is very readable
showLL :: (Show a) => LinkedList a -> String
showLL Null = "END"
showLL (Node n rest) = (show n) ++ " -> " ++ (showLL rest)

--checks if an element is in a LinkedList
elemLL :: (Eq a) => a -> LinkedList a -> Bool
elemLL _ Null = False
elemLL n (Node x rest)
  | n == x  = True
  | otherwise = elemLL n rest

--inserts an item to the end of a LL
insertLL :: a -> LinkedList a -> LinkedList a
insertLL n Null = Node n Null
insertLL n (Node x rest) = Node x (insertLL n rest)

--gets the length of a LL
lengthLL :: LinkedList a -> Int
lengthLL Null = 0
lengthLL (Node a rest) = 1 + (lengthLL rest)

--appends one LL to the end of another
--the first argument is the base LL and the second is the LL that will be appended to it
appendLL :: LinkedList a -> LinkedList a -> LinkedList a
appendLL l Null = l
appendLL Null k = k
appendLL (Node x r1) other
  | lengthLL r1 == 0 = (Node x other)
  | otherwise        = (Node x (appendLL r1 other))

--a LL can act as a functor...
instance Functor LinkedList where
  fmap f Null = Null
  fmap f (Node a rest) = (Node (f a) (fmap f rest))

--and an applicative functor.
--the <*> function used fmap and appendLL to apply function f to every member of the second LL
--then recursively does the same for every function in the first LL
instance Applicative LinkedList where
  pure a = Node a Null
  (Node f r1) <*> second = appendLL (f <$> second) (r1 <*> second)
  _ <*> Null = Null
  Null <*> _ = Null

--LL is a monoid and a monad as well
instance Monoid (LinkedList a) where
  mempty = Null
  mappend = appendLL

instance Monad LinkedList where
  return a   = (Node a Null)
  Null >>= f = Null
  (Node a rest) >>= f = mappend (f a) (rest >>= f)

--fboy is an applicative functor, that can be used with <*>
fboy = (*) <$> (linkedFromList [2,3])
