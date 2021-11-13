fatorial :: (Ord a, Num a) => a -> a
fatorial n
    | n <= 0 = 1
    | otherwise = n * fatorial (n-1)