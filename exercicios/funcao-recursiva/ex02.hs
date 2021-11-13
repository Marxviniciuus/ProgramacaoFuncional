somar :: Int -> Int
somar n
    | n == 0 = n
    | otherwise = n + somar(n-1)