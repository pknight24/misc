class Shape a where
  area :: a -> Float
  perimeter :: a -> Float

type Radius = Float

data Point = Point Float Float deriving (Show, Eq)

data Circle = Circle Point Radius deriving (Show, Eq)

--define the rectangle counter clockwise
data Rectangle = Rectangle Point Point Point Point deriving (Show, Eq)

distance :: Point -> Point -> Float
distance (Point x1 y1) (Point x2 y2) = sqrt $ (x2 - x1) ^ 2 + (y2 - y1) ^ 2

instance Shape Circle where
  area (Circle _ r) = pi * r * r
  perimeter (Circle _ r) = 2 * pi * r

instance Shape Rectangle where
  area (Rectangle p1 p2 p3 p4) = (*) (distance p1 p2) (distance p2 p3)
  perimeter (Rectangle p1 p2 p3 p4) = 2 * (distance p1 p2) + 2 * (distance p2 p3)

origin = (Point 0 0)
