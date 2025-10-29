mySum :: Num a => [a] -> a
mySum xs = mySumHelper 0 xs

mySumHelper :: Num a => a -> [a] -> a
mySumHelper acc [] = acc
mySumHelper acc (x:xs) = mySumHelper (acc + x) xs

myProduct :: Num a => [a] -> a
myProduct xs = myProductHelper 1 xs

myProductHelper :: Num a => a -> [a] -> a
myProductHelper acc [] = acc
myProductHelper acc (x:xs) = myProductHelper (acc * x) xs

myOr :: [Bool] -> Bool
myOr xs = myOrHelper False xs

myOrHelper :: Bool -> [Bool] -> Bool
myOrHelper acc [] = acc
myOrHelper acc (x:xs) = myOrHelper (acc || x) xs

myAnd :: [Bool] -> Bool
myAnd xs = myAndHelper True xs

myAndHelper :: Bool -> [Bool] -> Bool
myAndHelper acc [] = acc
myAndHelper acc (x:xs) = myAndHelper (acc && x) xs
