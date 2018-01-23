import System.Environment
import Text.Parsec
import Text.Parsec.String (Parser)

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
  n <- number <|> list
  whitespace
  return n

terms = many term

expr = do
  whitespace
  o <- op
  ts <- terms
  let operation = convertOp o
  return (foldl1 operation ts)

eval input = parse list "" input

list = do
  char '('
  e <- expr
  char ')'
  return e
