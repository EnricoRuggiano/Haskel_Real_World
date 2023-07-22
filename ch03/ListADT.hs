data List a = Cons a (List a)
            | Nil
              deriving (Show)

fromList (x:xs) = Cons x (fromList xs)
fromList [] = Nil

toList Nil = []
toList (Cons x xs) = x: toList xs

myLength [] = 0
myLength (x:xs) = 1 + myLength xs

mySum [] = 0
mySum (x:xs) = x + mySum xs

myMean t = if null t
        then 0
        else
            fromIntegral(mySum(t)) / fromIntegral(myLength(t))

