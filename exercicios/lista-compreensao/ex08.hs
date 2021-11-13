buscar :: Eq a => a -> [(a,b)] -> [b]
buscar k xs = [v | (k', v) <- xs, k == k']


posicoes :: Eq a => a -> [a] -> [Int]
posicoes x xs = buscar x [(z, i) | (z, i) <- zip xs [0 ..]]

