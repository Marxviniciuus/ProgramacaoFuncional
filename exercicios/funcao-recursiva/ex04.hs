euclides :: Int -> Int -> Int
euclides x y
    | x == y = x 
    | x > y = euclides (y-x) y
    | otherwise = euclides x (y-x)
main :: IO ()
main = do
    print $ euclides 6 27