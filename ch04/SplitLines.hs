splitLines [] = []
splitLines l =
    let (pre, suff) = break isLineTerminator l
    in pre : case suff of
        ('\r':'\n':rest) -> splitLines rest
        ('\n':rest)      -> splitLines rest
        ('\r':rest)      -> splitLines rest
        _                -> []
    where isLineTerminator c 
            | c == '\r'  = True
            | c == '\n'  = True
            | otherwise  = False