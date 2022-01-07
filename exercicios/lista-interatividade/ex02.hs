module Main where

    somapLinha :: Int -> Int -> IO Int
    somapLinha 0 x = return x
    somapLinha qt x = do
        valor <- readLn :: IO Int
        somapLinha (qt-1) (x + valor)
        
    somador :: IO ()
    somador = do
        qt <- readLn :: IO Int
        meuOut <- somapLinha qt 0
        putStrLn ("O total é" ++ show out')

    main :: IO ()
    main = do
        putStrLn "Quantos números?"
        somador