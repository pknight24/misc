--reads contents of a file, similar to 'cat' unix command
----
import System.IO
import System.Environment
import System.Directory
import Control.Exception

main = catch reader handler

reader :: IO ()
reader = do
  (file:_) <- getArgs
  contents <- readFile file
  putStr contents

handler :: IOError -> IO ()
handler _ = putStr "The file does not exist!"
