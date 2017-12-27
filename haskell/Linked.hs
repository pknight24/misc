data LinkedList a = Null | Node a (LinkedList a) deriving (Show, Eq)

linkedFromList :: [a] -> LinkedList a
linkedFromList [] = Null
linkedFromList (x:xs) = Node x (linkedFromList xs)

showLL :: (Show a) => LinkedList a -> String
showLL Null = " END"
showLL (Node n rest) = (show n) ++ "->" ++ (showLL rest)

elemLL :: (Eq a) => a -> LinkedList a -> Bool
elemLL _ Null = False
elemLL n (Node x rest)
  | n == x  = True
  | otherwise = elemLL n rest

insertLL :: a -> LinkedList a -> LinkedList a
insertLL n Null = Node n Null
insertLL n (Node x rest) = Node x (insertLL n rest)
