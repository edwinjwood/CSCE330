-- Note: Your file must be free of typing errors. If your file can not
-- be loaded into ghci, then you will get 0 point. Please read the instructions
-- for each problem carefully. Failure to follow the instructions may result in
-- 0 point.


-- Problem 1 (2 points): Use pattern matching and recursion to define the
-- following 'myDrop' function. 
-- It drops the first n elements from a list.
-- We assume the input number is always greater or
-- equaled to 0. 

myDrop :: Int -> [a] -> [a]
myDrop 0 xs = xs
myDrop _ [] = []
myDrop n (_:xs) = myDrop (n-1) xs

-- For your convenient, your implementation
-- of myDrop should have the following
-- behavior from the interpreter.

-- > myDrop 3 [1,2,3,4,5]
-- [4,5]
-- > myDrop 3 []
-- []
-- > myDrop 3 [1,2]
-- []
-- > myDrop 0 [1,2]
-- [1,2]
-- > myDrop 4 [1,2]
-- []

-- Problem 2 (2 points): Use pattern matching and recursion to define the following 'myConcat' function. 
-- It concatenates a list of list into a list.
-- You may use the built-in append function (++) from Haskell. 
myConcat :: [[a]] -> [a]
myConcat [] = []
myConcat (xs:xss) = xs ++ myConcat xss


-- Your function should at least satisfy the following
-- test case. 
-- > myConcat [[1,2], [3,4], [5,6]]
-- [1,2,3,4,5,6]

-- Problem 3 (2 points): Use pattern matching and recursion to define
-- the following 'duplicate' function. It produce a list with n identical elements.
-- We may assume the input number is always greater
-- or equaled to 0. 
duplicate :: Int -> a -> [a]
duplicate 0 _ = []
duplicate n x = x : duplicate (n-1) x

-- For example, 
-- > duplicate 3 'a'
-- "aaa"
-- > duplicate 3 '1'
-- "111"
-- > duplicate 3 1
-- [1,1,1]
-- > duplicate 0 1
-- []

-- Problem 4 (2 points):
-- Use pattern matching and recursion to define
-- the following 'myElem' function that decides if an input is an element of a list.

myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem y (x:xs)
  | y == x    = True
  | otherwise = myElem y xs

-- For example, 
-- > myElem 1 [1,2,3,4]
-- True
-- > myElem 5 [1,2,3,4]
-- False    

-- Problem 5 (2 points): Use pattern matching and recursion to
-- define the following 'myMaximum' function that
-- return the maximum element in a list.

myMaximum :: (Ord a) => [a] -> a  
myMaximum [x] = x
myMaximum (x:xs) = max x (myMaximum xs)

-- For example.
-- > myMaximum [1,10,3,9]
-- 10

-- > myMaximum [1,20,3,4]
-- 20

-- Problem 6 (3 points).
-- Recall that
-- fibonacci sequence is defined as the following:
-- 0, 1, 1, 2, 3, 5 , ...
-- where the n-th number in the sequence
-- is the sum of previous two numbers.
-- Define the following 'fib' function that 
-- returns the 'nth' fibonacci number. 
-- Note: You solution must return (fib 100)
-- within 1 second. Your definition must consits
-- of functions and concepts that we learned
-- from the class. You will not get point if
-- you uses concepts that are outside of the class.


fib :: Integer -> Integer
fib n = fibHelper n 0 1
  where
    fibHelper 0 a _ = a
    fibHelper n a b = fibHelper (n-1) b (a+b)

-- For example:
-- > fib 3
-- 2
-- > fib 4
-- 3
-- > fib 5
-- 5
-- > fib 6
-- 8
-- > fib 100
-- > 354224848179261915075






