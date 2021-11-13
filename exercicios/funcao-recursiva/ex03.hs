elevado :: (Fractional a, Eq a, Ord a) => a -> a -> a
elevado m 0 = 1
elevado m n
    | n < 0 = 1 / ( elevado m abs n)
    | otherwise = m * ( elevado m (n-1))