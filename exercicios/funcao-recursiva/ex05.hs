meuAnd :: [Bool] -> Bool
meuAnd [] = False
meuAnd [x] = x
meuAnd (x:xs) = x && meuAnd xs

meuConcat :: [[a]] -> [a]
meuConcat [] = []
meuConcat (x:xs) = x ++ meuConcat xs

meuReplicate :: Int -> a -> [a]
meuReplicate 0 y = []
meuReplicate x y = y : meuReplicate (x-1) y

selecionador :: [a] -> Int -> [a]
selecionador (x:xs) 0 = x 
selecionador (x:xs) v = xs selecionador (v-1)

meuElem :: Eq a => a -> [a] -> Bool
meuElem x [] = False
meuElem x (y:ys) 
    | y == x = True 
    | otherwise = meuElem x ys