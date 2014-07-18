data Sort a = Any           (a -> Maybe a)
            | Sort (Sort a) (a -> Maybe a)

dress :: Sort a -> a -> Maybe a
dress (Any         func) x = func x
dress (Sort parent func) x = case (dress parent x) of
  Just p  -> func p
  Nothing -> Nothing

anySort :: Sort a
anySort = Any $ id . Just

-- wholeNumber = Sort anySort (\x -> if x >= 0 then Just x else Nothing)

main = do putStr "h"
