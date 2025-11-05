-- Consider the following definition of tree. 
data Tree a = Leaf a | Node (Tree a) (Tree a)
  deriving (Show, Eq)

-- Problem 1. (1 point) Define tr1 to represent the following
-- binary tree. 
--    @ 
--   | \ 
--   @  3
--   |\
--   4 5
tr1 :: Tree Int
tr1 = undefined

-- Problem 2. (1 point) Define tr2 to represent the following
-- binary tree.
--    @ 
--   | \ 
--   @  3
--   |\
--   @ 5
--   |\
--   9 10    
tr2 :: Tree Int
tr2 = undefined

-- Problem 3. (1 point) Define tr3 to represent the following
-- binary tree.

--    @ 
--   | \ 
--   @   @
--   |\  |\
--   @ 5 7 6
--   |\
--   9 10    
tr3 :: Tree Int
tr3 = undefined

-- Problem 4. (3 points) Define a map function for
-- tree.

mapTree :: (a -> b) -> Tree a -> Tree b
mapTree = undefined

-- Problem 5. (3 points) Define the following leafs function that returns all the leaves in a tree.
leafs :: Tree a -> [a]
leafs = undefined


-- Problem 6. (3 points) Define the following to determine if a tree is balanced. A tree is
-- balanced if the number of leaves in the left and right subtree of every node differs by at most one, 
-- with leaves themselves being trivially balanced. 
balanced :: Tree a -> Bool
balanced = undefined



-- Problem 7. (4 points) Define the following function that converts a non-empty list
-- of integers into a balanced tree. 
create :: [a] -> Tree a
create = undefined

  
