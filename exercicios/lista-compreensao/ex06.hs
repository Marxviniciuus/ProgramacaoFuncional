fatores :: Int -> [Int]
fatores n = [x | x <- [1 .. n], mod n x == 0]

perfeitos :: Int -> [Int] 
perfeitos n = [l | l <- [1..n], l == sum (fatores l)]