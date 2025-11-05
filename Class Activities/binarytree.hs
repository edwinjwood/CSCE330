data BinaryTree a = EmptyTree | Node a (BinaryTree a) (BinaryTree a)
  deriving (Show, Eq)

elemTree :: Eq a => a -> BinaryTree a -> Bool
elemTree _ EmptyTree = False
elemTree x (Node val left right)
  | x == val   = True
  | otherwise  = elemTree x left || elemTree x right