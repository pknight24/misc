import Text.Parsec
import Text.Parsec.String
import System.Environment

type Params = [Int]

getProc :: Parser Char
getProc = do
  p <- oneOf "+-*/"
  newline
  return p

getVal :: Parser Int
getVal = do
  v <- digit
  newline
  return $ read $ show v

convertFunc :: Char -> (Int -> Int -> Int)
convertFunc '+' = (+)
convertFunc '-' = (-)
convertFunc '*' = (*)
convertFunc '/' = div

getParams :: Parser Params
getParams = many1 getVal

interpret :: Params -> Parser Int
interpret p = do
  ps <- getParams
  let params = p ++ ps
  op <- getProc
  let o = convertFunc op
  let result = foldl1 o params
  return result

stacker i = parse (interpret []) "Stacker" i

main = do
  (file:_) <- getArgs
  text <- readFile file
  let result = stacker text
  putStrLn $ show result
