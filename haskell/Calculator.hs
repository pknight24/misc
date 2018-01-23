import System.Environment
import Text.Parsec
import Text.Parsec.String (Parser)

numberString :: Parser [Char]
numberString = many1 digit

number :: Parser Float
number = fmap readFloat numberString
  where readFloat = read :: String -> Float
        numberString :: Parser [Char]
        numberString = many1 digit

op :: Parser Char
op = oneOf "+-*/"

convertOp :: Char -> (Float -> Float -> Float)
convertOp '+' = (+)
convertOp '-' = (-)
convertOp '*' = (*)
convertOp '/' = (/)

whitespace :: Parser ()
whitespace = skipMany $ oneOf " \n\t"

term = do
  whitespace
  n <- number
  whitespace
  return n

terms = many term

expr = do
  whitespace
  o <- op
  ts <- terms
  let operation = convertOp o
  return (foldr1 operation ts)

eval input = parse (many (expr <|> number)) "" input
