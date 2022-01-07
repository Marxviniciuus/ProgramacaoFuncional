module Main where

somador :: IO () 
somador = do
    putStrLn "Quantos números?"
    qtd <- readLn :: IO Int
    num <- sequence [ readLn :: IO Int | _ <- [1..qtd] ]
    putStrLn $ "O total é " ++ show (sum num)


somapLinha :: Int -> [IO Int]
somadorAux 0 = []
somadorAux v = (readLn :: IO Int) : somadorAux (v-1)

somador' :: IO ()
somador' = do
    putStrLn "Quantos números? "
    num <- readLn :: IO Int
    let valores = somapLinha num
    list <- sequence valores
    putStrLn ("O total é " ++ show (sum list))

main :: IO ()
main = do
    somador