
mySum :: Num a => [a] -> a
mySum [] = 0
mySum (x:xs) = x + mySum xs

myProduct :: Num a => [a] -> a
myProduct [] = 1
myProduct (n:ns) = n * myProduct ns

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (x:xs) = x && myAnd xs

