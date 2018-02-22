data Coin = Quarter | Dime | Nickel | Penny deriving (Show)

getValue :: Coin -> Int
getValue Quarter = 25
getValue Dime    = 10
getValue Nickel  = 5
getValue Penny   = 1

makeChange :: Int -> [Coin]
makeChange n
  | n >= 25 = Quarter : (makeChange $ n - 25)
  | n >= 10 = Dime : (makeChange $ n - 10)
  | n >= 5  = Nickel : (makeChange $ n - 5)
  | n >= 1  = Penny : (makeChange $ n - 1)
  | otherwise = []
