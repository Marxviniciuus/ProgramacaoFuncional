import System.IO ( hSetEcho, stdin )

obterChar:: IO Char 
obterChar = do
  hSetEcho stdin False
  x <- getChar
  hSetEcho stdin True
  return x

press :: [Char] -> [Char] -> IO String
press [] controle = return controle
press (char:str) controle = do
  putChar char
  press str controle

obterLinha :: IO String 
obterLinha = do 
  char <- obterChar
  case char of
    '\n' -> do
      press [char] []
    '\DEL' -> do
      press "\b \b" "\DEL"
    _ -> do
      putChar char
      string <- obterLinha
      if string == "\DEL" then do 
        obterLinha
      else do
        return (char:string)

main :: IO ()
main = do
  str <- obterLinha
  putStrLn str