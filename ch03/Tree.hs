-- file: ch03/Tree.hs
data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

simpleTree = Node "parent" (Node "left child" Empty Empty)
                           (Node "right child" Empty Empty)


nodesAreSame ( Node a _ _ ) ( Node b _ _) 
  | a == b  = Just a
nodesAreSame  _ _ = Nothing