class Alive a where
  mate :: a -> a -> a
  age :: a -> Int
  name :: a -> String
  gender :: a -> Gender

data Gender = Male | Female deriving (Show, Eq, Ord)

data Person = Person String Int Gender deriving (Show)

instance Alive Person where
  mate m n = (Person ((name m) ++ "-" ++ (name n)) 0 (gender n))
  age (Person _ a _) = a
  name (Person n _ _) = n
  gender (Person _ _ g) = g

parker = Person "Parker" 19 Male
tina = Person "Tina" 18 Female
