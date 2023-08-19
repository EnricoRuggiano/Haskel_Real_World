safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead l  = Just (head l)

safeTail :: [a] -> Maybe a
safeTail [] = Nothing
safeTail (x:xs)  = if null xs 
                   then Just x
                   else safeTail xs 

safeLast [] = Nothing
safeLast f = Just (last f)

safeInit [] = Nothing
safeInit f = Just (init f)


splitWith :: (a -> Bool) -> [a] -> [[a]]
splitWith _ [] = [[]]
splitWith f l  = x : [y]
    where (x, y) = break f l 