type Sorter a b = a -> Maybe b

any :: Sorter a a
any = id . Just

-- integer :: Integral -> 

main = do putStr "h"
