-- Note: Your file must be free of typing errors. If your file can not
-- be loaded into ghci, then you will get 0 point. Please read the instructions
-- for each problem carefully. Failure to follow the instructions may result in
-- 0 point.

-- Problem 1 (2 points). Write down definitions that have the following types;

curry' :: ((a, b) -> c) -> a -> b -> c
curry' = undefined

uncurry' :: (a -> b -> c) -> (a, b) -> c
uncurry' = undefined


-- Problem 2 (2 points): redefine the filter function using foldr.
filter' :: (a -> Bool) -> [a] -> [a]
filter' = undefined


-- Problem 3 (2 points): Use pattern matching and recursion to define the following function altMap that
-- alternately applies its two argument functions to successive elements in a list,
-- in turn about order. For example:
-- > altMap (+10) (+100) [0,1,2,3,4]
-- [10,101,12,103,14]
altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap = undefined

-- Problem 4 (2 points): 
-- Use pattern matching and recursion to define a function 'halve'
-- that splits a list
-- into two halves whose lengths differ by at most one.
-- For example:
-- > halve [0,1,2,3,4]
-- ([0,2,4],[1,3])
-- > halve [0,1,2,3,4, 5]
-- ([0,2,4],[1,3,5])

halve :: [a] -> ([a], [a])
halve = undefined


-- Problem 5 (2 points)
-- Use pattern matching and recursion to define the function merge that
-- merges two sorted lists to give a single sorted list. For example:
-- > merge [2,5,6] [1,3,4]
-- [1,2,3,4,5,6]
-- > merge [1,5,5] [3,8]
-- [1,3,5,5,8]

merge :: Ord a => [a] -> [a] -> [a]
merge = undefined


-- Problem 6 (2 points)
-- Using the 'halve' and 'merge' functions, pattern matching and recursion to
-- define a function 'msort' that implements merge sort,
-- in which the empty list and singleton lists are already
-- sorted, and any other list is sorted by merging together the two lists that
-- result from sorting the two halves of the list separately.

msort :: Ord a => [a] -> [a]
msort = undefined

-- > msort [5,9,8,6,5,4,3,2,1]
-- [1,2,3,4,5,5,6,8,9]  




