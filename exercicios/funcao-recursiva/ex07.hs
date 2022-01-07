metades :: [a] -> ([a],[a]) 
metades xs = splitAt (length xs `div` 2) xs

merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
    | x< y = x : merge xs (y:ys)
    | otherwise = y: merge (x:xs) ys

mergesort :: Ord a => [a] -> [a]
mergesort [] = []
mergesort [x] = [x]
mergesort xs = merge (mergesort esquerda) (mergesort direita) 
    where (esquerda, direita) = metades xs

