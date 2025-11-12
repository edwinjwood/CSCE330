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
tr1 = Node (Node (Leaf 4) (Leaf 5)) (Leaf 3)

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
tr2 = Node (Node (Node (Leaf 9) (Leaf 10)) (Leaf 5)) (Leaf 3)

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
tr3 = Node
         (Node
            (Node (Leaf 9) (Leaf 10))
            (Leaf 5))
         (Node
            (Leaf 7)
            (Leaf 6))

-- Problem 4. (3 points) Define a map function for
-- tree.

mapTree :: (a -> b) -> Tree a -> Tree b
mapTree f (Leaf x) = Leaf (f x)
mapTree f (Node l r) = Node (mapTree f l) (mapTree f r)

-- Problem 5. (3 points) Define the following leafs function that returns all the leaves in a tree.
leafs :: Tree a -> [a]
leafs (Leaf x) = [x]
leafs (Node l r) = leafs l ++ leafs r

-- Problem 6. (3 points) Define the following to determine if a tree is balanced. A tree is
-- balanced if the number of leaves in the left and right subtree of every node differs by at most one, 
-- with leaves themselves being trivially balanced. 
balanced :: Tree a -> Bool
balanced (Leaf _) = True
balanced (Node l r) =
  balanced l && balanced r && abs (length (leafs l) - length (leafs r)) <= 1


-- Problem 7. (4 points) Define the following function that converts a non-empty list
-- of integers into a balanced tree. 
create :: [a] -> Tree a
create [x] = Leaf x
create xs  = Node (create left) (create right)
  where
    (left, right) = splitHalf xs

splitHalf :: [a] -> ([a], [a])
splitHalf xs = go xs xs
  where
    go [] ys = ([], ys)
    go [_] ys = ([], ys)
    go (_:_:zs) (y:ys) =
      let (first, second) = go zs ys
      in (y:first, second)
