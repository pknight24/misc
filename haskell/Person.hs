data Gender = Male | Female deriving (Show, Eq, Ord)

data Person = Person String Int Gender deriving (Show)

parker = Person "Parker" 19 Male
tina = Person "Tina" 18 Female

name :: Person -> String
name (Person n _ _) = n

age :: Person -> Int
age (Person _ i _) = i

gender :: Person -> Gender
gender (Person _ _ g) = g
