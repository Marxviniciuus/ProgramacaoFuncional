module Main where

meuPutStr :: String -> IO ()
meuPutStr [] = return ()
meuPutStr string = 
    sequence_ [  putChar x | x <- string ]

    main :: IO ()
    main = do
        meuPutStr "TESTANDO"
