--[(x,y) | x <- [1,2], y <- [3,4]]
listConcat = concat [[(x, 1) | x <- [3, 4]],[(x, 2)| x <- [3, 4]]]

main :: IO ()
main = do
print $ show listConcat