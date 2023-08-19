import Data.Char (digitToInt)

asInt :: String -> Int
asInt x = loop 0 x 

loop :: Int -> String -> Int
loop acc []     = 0
loop acc l = 
    let base = 10 ^ length(tail l) in 
        base * digitToInt(head l) + loop (acc + 1) (tail l) 

loop2 acc []     = 0
loop2 acc (x:xs) = 
    let base = 10 ^ length(xs) in 
        base * digitToInt(x) + loop (acc + 1) xs 
