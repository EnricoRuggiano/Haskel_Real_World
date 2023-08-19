mySecond :: [a] -> a

mySecond xs = if length xs <= 1
    then error "list is too short"
    else head (tail xs) 

mySecondNullable :: [a] -> Maybe a

mySecondNullable xs = if length xs <= 1
    then Nothing
    else Just (head (tail xs))


-- compact way
mySecondNullComp (_:x:_) = Just x
mySecondNullComp _ = Nothing
