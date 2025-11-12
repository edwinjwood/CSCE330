myLookup :: Eq a => a -> [(a, b)] -> Maybe b
myLookup _ [] = Nothing
myLookup key ((k,v):xs)
  | key == k  = Just v
  | otherwise = myLookup key xs


-- For example,
-- > myLookup 2 [(1, "Alice"), (2, "Bob")]
-- Just "Bob"
-- > myLookup 3 [(1, "Alice"), (2, "Bob")]
-- Nothing