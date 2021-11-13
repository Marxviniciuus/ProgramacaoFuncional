grid :: Int -> Int -> [(Int,Int)]
grid m n = [(x,y)| x <- [0.. n], y <- [0 .. n]]

quadrado:: Int -> [(Int, Int)]
quadrado p = [(x, y)| (x, y)<- grid p p, not (x == y)]