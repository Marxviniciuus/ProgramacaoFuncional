somaListInt :: [a] -> Int 
somaListInt [] = 0
somaListInt [x] = x
somaListInt (x:xs) = x + somaListInt xs

pegaElemList :: Int -> [a]-> [a]
pegaElemList 0 xs = []
pegaElemList y [x] = [x]
pegaElemList y (x:xs) = x : pegaElemList (y-1) xs

ultElemList :: [a] -> a
ultElemList [x] = x
ultElemList (x:xs) = ultElemList xs