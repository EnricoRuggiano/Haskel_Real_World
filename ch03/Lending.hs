import GHC.RTS.Flags (ParFlags(parGcLoadBalancingEnabled))

-- let ... in
lend amount balance = 
    let reserve = 100
        newBalance = balance - amount
    in if balance < reserve
        then Nothing
        else Just newBalance

-- where
lend2 amount balance = 
    if balance < reserve
    then Nothing
    else Just newBalance 
    where reserve = 100
          newBalance = balance - amount

-- case .. of
lend3 amount balance = 
    case delta > 0 of
         False -> Nothing
         True -> Just newBalance
    where reserve = 100
          newBalance = balance - amount
          delta = balance - reserve 

-- guards |
lend4 amount balance 
    | amount <= 0   = Nothing
    | delta  <= 0   = Nothing
    | otherwise     = Just newBalance
    where reserve = 100
          newBalance = balance - amount
          delta = balance - reserve 
