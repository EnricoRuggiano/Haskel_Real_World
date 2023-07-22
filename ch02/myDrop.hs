dropEven t = [ x | x <- t, odd x ]
dropOdd t = [ x | x <- t, even x ]

lastButOne t 
    | length t <= 1 = 0
    | (length t) > 1 = last(take (length t - 1) t)