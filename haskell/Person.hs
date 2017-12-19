data Person = Person String Int deriving (Show)
parker = Person "Parker" 19
tina = Person "Tina" 18

name :: Person -> String
name (Person n _) = n

age :: Person -> Int
age (Person _ a) = a

baby :: Person -> Person -> Person
baby a b  = Person (name a ++ "-" ++ name b) 0
