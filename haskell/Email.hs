import Text.Parsec
import Text.Parsec.String

email :: Parser String
email = do
  nick
  host
  (many1 anyChar)

nick = manyTill anyChar (char '@')

host = manyTill anyChar (char '.')

validEmail :: String -> Bool
validEmail input = case parse email "" input of
                   (Left _) -> False
                   (Right _) -> True   
