data Sort a = Any           (a -> Maybe a)
            | Sort (Sort a) (a -> Maybe a)
            | Join (Sort a) (Sort a)

dress :: Sort a -> a -> Maybe a
dress (Any         func) x = func x
dress (Sort parent func) x = case (dress parent x) of
  Just p  -> func p
  Nothing -> Nothing
dress (Join (Sort mother motherFunc) (Sort father fatherFunc)) x = case (dress mother x) of
  Just y -> case (dress father y) of
    Just z -> z
    Nothing -> Nothing
  Nothing -> Nothing

anySort :: Sort a
anySort = Any $ id . Just




-- Some sorts!
-- Move these to a separate file eventually
integer :: Sort Int
integer = Sort anySort id

positiveInteger :: Sort Int
positiveInteger = Sort integer $ \x -> if x >= 0 then Just x else Nothing

evenNumber :: Sort Int
evenNumber = Sort integer $ \x -> if (even x) then Just x else Nothing

missing :: Sort String
missing = Sort anySort $ \x -> if (x == "NA") then Just x else Nothing


main = do putStr "h"
